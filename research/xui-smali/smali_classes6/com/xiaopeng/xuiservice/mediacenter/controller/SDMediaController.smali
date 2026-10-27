.class public Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;
.super Ljava/lang/Object;
.source "SDMediaController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MCService-SDMediaController"


# instance fields
.field private mCurrentController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;

.field private mDefaultMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

.field private final mDisplayId:I

.field private mIPCMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;

.field private mMediaController:Landroid/media/session/MediaController;

.field mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

.field private mPlayState:I

.field private mSDPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

.field private mSessionMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

.field mSessionStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionStatusListener;

.field private mStopReasonList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mPlayState:I

    .line 226
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    .line 254
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$3;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSessionStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionStatusListener;

    .line 38
    iput p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDisplayId:I

    .line 39
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mIPCMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;

    .line 40
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSessionMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    .line 41
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDefaultMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mIPCMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mCurrentController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->listenerIpc()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mStopReasonList:Ljava/util/Set;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mPlayState:I

    return v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mPlayState:I

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSDPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDisplayId:I

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->notifyListenerPlayStatusChanged(I)V

    return-void
.end method

.method private isSameController(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z
    .locals 1
    .param p1, "a"    # Landroid/media/session/MediaController;
    .param p2, "b"    # Landroid/media/session/MediaController;

    .line 135
    if-ne p1, p2, :cond_0

    .line 136
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_0
    if-nez p1, :cond_1

    .line 139
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_1
    invoke-virtual {p1, p2}, Landroid/media/session/MediaController;->controlsSameSession(Landroid/media/session/MediaController;)Z

    move-result v0

    return v0
.end method

.method private listenDefault()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSessionMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->setPlayInfoListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;)V

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSessionMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->setSessionStatusListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionStatusListener;)V

    .line 208
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->unregisterListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;)V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDefaultMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->setPlayInfoListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;)V

    .line 210
    return-void
.end method

.method private listenerIpc()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSessionMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->setPlayInfoListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSessionMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->setSessionStatusListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionStatusListener;)V

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDefaultMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->setPlayInfoListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;)V

    .line 216
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->registerListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;)V

    .line 217
    return-void
.end method

.method private listenerSession()V
    .locals 2

    .line 220
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->unregisterListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;)V

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDefaultMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->setPlayInfoListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;)V

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSessionMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->setPlayInfoListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;)V

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSessionMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSessionStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionStatusListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->setSessionStatusListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionStatusListener;)V

    .line 224
    return-void
.end method

.method private notifyListenerPlayStatusChanged(I)V
    .locals 2
    .param p1, "newStatus"    # I

    .line 104
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mStopReasonList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->stopScreenMedia()V

    .line 119
    :cond_0
    return-void
.end method

.method private stopScreenMedia()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 123
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 124
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/Constants;->isXpPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getPackageScreenId(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDisplayId:I

    if-ne v0, v1, :cond_1

    .line 129
    const-string v0, "MCService-SDMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopScreenMedia--screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/16 v0, 0x12

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->playbackController(II)Z

    .line 132
    :cond_1
    return-void

    .line 125
    :cond_2
    :goto_0
    return-void
.end method

.method private syncBaseMediaInfo(Landroid/media/session/MediaController;)V
    .locals 8
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 76
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;-><init>()V

    .line 77
    .local v0, "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setXpMusic(Z)V

    .line 78
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    .line 79
    .local v1, "metadata":Landroid/media/MediaMetadata;
    if-eqz v1, :cond_0

    .line 80
    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "title":Ljava/lang/String;
    const-string v3, "android.media.metadata.ARTIST"

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "artist":Ljava/lang/String;
    const-string v4, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 83
    .local v4, "displayIcon":Landroid/graphics/Bitmap;
    const-string v5, "MCService-SDMediaController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncBaseMediaInfo title:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setTitle(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setArtist(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setAlbumBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "artist":Ljava/lang/String;
    .end local v4    # "displayIcon":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSDPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSDPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    iget v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDisplayId:I

    invoke-interface {v2, v3, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;->onMediaInfoChanged(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 91
    :cond_1
    return-void
.end method

.method private updateDefaultMediaInfo()V
    .locals 9

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSDPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSDPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDisplayId:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDefaultMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->getMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;->onMediaInfoChanged(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 96
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSDPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    iget v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDisplayId:I

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDefaultMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->getPositions()[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v5, v0, v1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDefaultMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

    .line 97
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->getPositions()[J

    move-result-object v0

    const/4 v1, 0x1

    aget-wide v7, v0, v1

    .line 96
    invoke-interface/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;->onPositionChanged(IJJ)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSDPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDisplayId:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDefaultMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->getLyricInfo()Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;->onLyricUpdated(ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDefaultMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->getPlayStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->notifyListenerPlayStatusChanged(I)V

    .line 101
    return-void
.end method


# virtual methods
.method public getLyricInfo()Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mCurrentController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;->getLyricInfo()Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mCurrentController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;->getMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPlayStatus()I
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mCurrentController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;->getPlayStatus()I

    move-result v0

    return v0
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mCurrentController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;->getCurrentPlayState()Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getPositions()[J
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mCurrentController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;->getPositions()[J

    move-result-object v0

    return-object v0
.end method

.method public playbackController(II)Z
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "params"    # I

    .line 173
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mIPCMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDisplayId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;->playbackControl(III)Z

    move-result v0

    return v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mCurrentController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDisplayId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;->playbackControl(III)Z

    move-result v0

    return v0
.end method

.method public releaseStop()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mStopReasonList:Ljava/util/Set;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mStopReasonList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 202
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendCustomAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mCurrentController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;->sendCustomAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setFavorite(ZLjava/lang/String;)V
    .locals 1
    .param p1, "favorite"    # Z
    .param p2, "id"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mCurrentController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;->setFavorite(ZLjava/lang/String;)V

    .line 150
    return-void
.end method

.method public setPlayInfoListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSDPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    .line 49
    return-void
.end method

.method public stopMedia(ZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "stop"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 186
    const-string v0, "MCService-SDMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMedia:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &stop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " &reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    if-eqz p1, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->stopScreenMedia()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mStopReasonList:Ljava/util/Set;

    monitor-enter v0

    .line 191
    if-eqz p1, :cond_1

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mStopReasonList:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mStopReasonList:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 196
    :goto_0
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public switchSource(I)V
    .locals 1
    .param p1, "source"    # I

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mCurrentController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;->switchSource(I)V

    .line 146
    return-void
.end method

.method public updateMediaController(Landroid/media/session/MediaController;)V
    .locals 3
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->isSameController(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "MCService-SDMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sameController displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 57
    if-nez p1, :cond_1

    .line 58
    const-string v0, "MCService-SDMediaController"

    const-string v1, "updateMediaController controller null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mDefaultMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mCurrentController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->listenDefault()V

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->updateDefaultMediaInfo()V

    goto :goto_0

    .line 62
    :cond_1
    sget-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->XP_Music_Session_Control:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaopeng.musicradio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mIPCMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mCurrentController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->listenerIpc()V

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->syncBaseMediaInfo(Landroid/media/session/MediaController;)V

    goto :goto_0

    .line 68
    :cond_3
    const-string v0, "MCService-SDMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMediaController controller pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->listenerSession()V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mSessionMediaController:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mCurrentController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->mCurrentController:Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;->updateMediaController(Landroid/media/session/MediaController;)V

    .line 73
    return-void
.end method
