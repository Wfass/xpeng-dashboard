.class public Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;
.super Ljava/lang/Object;
.source "MediaCenterModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;,
        Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$SingleHolder;
    }
.end annotation


# static fields
.field public static final ACTION_MEDIA_PLAYBACK_CONTROL:Ljava/lang/String; = "com.xiaopeng.xuiservice.playbackControl"

.field private static final ASYNC_THREAD_NAME:Ljava/lang/String; = "mediacenter-single-async-thread"

.field public static EXTRA_PLAYBACK_CMD:Ljava/lang/String; = "playbackCmd"

.field public static EXTRA_PLAYBACK_PARAM:Ljava/lang/String; = "playbackParam"

.field private static final KEY_LRC:Ljava/lang/String; = "lyricInfo"

.field private static final KEY_PLAY_SOURCE:Ljava/lang/String; = "playSource"

.field private static final MODE_CIRCLE:I = 0x2

.field private static final MODE_RANDOM:I = 0x3

.field private static final MODE_SINGLE:I = 0x1

.field public static final PLAYBACK_CMD_REWIND:I = 0xd

.field public static final STATE_BT_AVAILABLE:I = 0x2

.field public static final STATE_BT_MEDIA_CONNECTED:I = 0x5

.field public static final STATE_BT_MEDIA_CONNECTING:I = 0x4

.field public static final STATE_BT_MEDIA_DISCONNECTING:I = 0x3

.field public static final STATE_BT_SOURCE_SELECTED:I = 0x6

.field public static final STATE_BT_UNAVAILABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaCenterModel"

.field public static final TYPE_MASTER:Ljava/lang/String; = "master"

.field public static final TYPE_MUSIC:Ljava/lang/String; = "music"

.field private static sSingleAsyncHandler:Landroid/os/Handler;

.field private static sSingleAsyncThread:Landroid/os/HandlerThread;


# instance fields
.field private callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

.field private mLastDuration:J

.field private mLastLrc:Ljava/lang/String;

.field private mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

.field private mLastMediaStr:Ljava/lang/String;

.field private mLastMetaDuration:J

.field private mLastPlayState:I

.field private mLastPosition:J

.field private mListner:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;

.field private mMasterDuration:J

.field private mMasterScreen:I

.field private mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

.field private mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mMusicInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field private mMusicScreen:I

.field private mOldEvnetPlayState:Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

.field private mScreenPos:I

.field private mSharedDisplayListener:Lcom/xiaopeng/musicradio/utils/bj;

.field private mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

.field private masterBitmap:Landroid/graphics/Bitmap;

.field private masterPlayState:I

.field private modeChangedListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedListener;

.field private wmf:Lcom/xiaopeng/view/WindowManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 146
    iput v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastPlayState:I

    const-wide/16 v1, -0x1

    .line 149
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastPosition:J

    .line 150
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastDuration:J

    .line 151
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMasterDuration:J

    .line 152
    new-instance v1, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$1;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mListner:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;

    .line 224
    new-instance v1, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$2;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->modeChangedListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedListener;

    const/4 v1, 0x0

    .line 874
    iput v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->masterPlayState:I

    .line 1353
    iput v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMasterScreen:I

    .line 1354
    iput v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMusicScreen:I

    .line 1357
    new-instance v0, Lcom/xiaopeng/musicradio/utils/bj;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/utils/bj;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mSharedDisplayListener:Lcom/xiaopeng/musicradio/utils/bj;

    .line 1410
    new-instance v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$16;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    .line 233
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mediacenter-single-async-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->sSingleAsyncThread:Landroid/os/HandlerThread;

    .line 234
    sget-object v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->sSingleAsyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 235
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->sSingleAsyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->sSingleAsyncHandler:Landroid/os/Handler;

    .line 236
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->initMediaCenterManager()V

    .line 237
    new-instance v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$3;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method private OnSPlaybackControl(II)V
    .locals 1

    .line 1572
    new-instance v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$18;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V

    invoke-static {v0}, Lbql;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->OnSPlaybackControl(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->setupMediaSession()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;JLjava/lang/String;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V
    .locals 0

    .line 113
    invoke-direct/range {p0 .. p6}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->updateMetaData(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;JLjava/lang/String;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)Z
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isDolbyType()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->setMediaSessionPlayState(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshMusicInfo()V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshBluetoothInfo()V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshProgramInfo()V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshNetRadioInfo()V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)I
    .locals 0

    .line 113
    iget p0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastPlayState:I

    return p0
.end method

.method static synthetic access$1900(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePlaybackStatus(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->playMode(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->switchAudio(II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->playControl(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)Lcom/xiaopeng/xuimanager/XUIManager;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshInfo(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->registerListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)Z
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->shouldRefreshMeida()Z

    move-result p0

    return p0
.end method

.method static synthetic access$702(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    return-object p1
.end method

.method static synthetic access$802(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastLrc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;Ljava/lang/String;)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getLyricInfo(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;Ljava/lang/String;)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    move-result-object p0

    return-object p0
.end method

.method private configHomePending()V
    .locals 2

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configHomePending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v0, :cond_0

    return-void

    .line 1137
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$14;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$14;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private configPlayerPending()V
    .locals 2

    const-string v0, "MediaCenterModel"

    const-string v1, "configPlayerPending: ============ "

    .line 607
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v0, :cond_0

    return-void

    .line 611
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$7;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private doSend(Ljava/lang/Runnable;)V
    .locals 1

    .line 246
    sget-object v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->sSingleAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;
    .locals 1

    .line 140
    sget-object v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$SingleHolder;->INSTANCE:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    return-object v0
.end method

.method private getLyricInfo(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;Ljava/lang/String;)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    .locals 2

    .line 525
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;-><init>()V

    .line 526
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setSongId(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setSongName(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setArtistName(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getAlbum()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setAlbumName(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setLyricContent(Ljava/lang/String;)V

    return-object v0
.end method

.method private handleDolbyCmd(Laqs;)V
    .locals 3

    .line 211
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isDolbyType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->masterPlayState:I

    const/4 v1, 0x1

    const-string v2, "MediaCenterModel"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "run play"

    .line 217
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-interface {p1}, Laqs;->a()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "run pause"

    .line 213
    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-interface {p1}, Laqs;->b()V

    :cond_2
    return-void
.end method

.method private initMediaCenterManager()V
    .locals 2

    .line 250
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    new-instance v1, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$4;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->createXUIManager(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->connect()V

    return-void
.end method

.method private isContentEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 374
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 377
    :cond_0
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private isDolbyType()Z
    .locals 2

    .line 197
    invoke-static {}, Laqq;->a()Laqq;

    move-result-object v0

    invoke-virtual {v0}, Laqq;->c()Laqs;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 199
    invoke-interface {v0}, Laqs;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "MediaCenterModel"

    const-string v1, "is_DolbyType: true"

    .line 202
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private isMusicLogin()Z
    .locals 2

    .line 1253
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    invoke-interface {v0}, Lbfe;->isBinded()Z

    move-result v0

    return v0
.end method

.method private isMusicRunning()Z
    .locals 7

    .line 1273
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1274
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 1275
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1276
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_0

    .line 1277
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    const-string v6, "com.xiaopeng.musicradio"

    .line 1278
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1279
    iput-object v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMusicInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private isReadLogin()Z
    .locals 1

    .line 1257
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->g()Z

    move-result v0

    return v0
.end method

.method private playControl(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x4

    const/4 v4, 0x6

    const/4 v5, 0x7

    const/4 v6, 0x2

    if-eq v1, v6, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-ne v1, v3, :cond_19

    .line 1612
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v7

    invoke-virtual {v7}, Laqr;->b()I

    move-result v7

    .line 1613
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v8

    invoke-virtual {v8, v7}, Laqr;->c(I)Laqt;

    move-result-object v8

    .line 1615
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receive cmd: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", param: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", masterPlayState :"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->masterPlayState:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v12, "MediaCenterModel"

    invoke-static {v12, v9}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1616
    invoke-static {}, Laqq;->a()Laqq;

    move-result-object v9

    invoke-virtual {v9}, Laqq;->c()Laqs;

    move-result-object v9

    const/4 v13, 0x0

    if-eqz v8, :cond_1

    .line 1618
    invoke-interface {v8}, Laqt;->j()I

    move-result v14

    .line 1619
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v15

    invoke-virtual {v15, v14}, Lbdm;->a(I)Lbeg;

    move-result-object v15

    .line 1620
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playControl: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_1

    if-eqz v15, :cond_1

    .line 1621
    invoke-interface {v15}, Lbeg;->g()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v9, :cond_1

    .line 1622
    invoke-interface {v9}, Laqs;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1623
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v4

    const-class v5, Lbfe;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbfe;

    invoke-interface {v4}, Lbfe;->getListSign()Ljava/lang/String;

    move-result-object v4

    .line 1624
    invoke-static {v4}, Lcom/xiaopeng/musicradio/utils/aj;->a(Ljava/lang/String;)Z

    move-result v5

    .line 1625
    invoke-static {v4}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v5, :cond_1

    if-nez v4, :cond_1

    const-string v1, "don\'t handle playback control as not logined or kugou authed"

    .line 1627
    invoke-static {v12, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1628
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v1

    invoke-virtual {v1, v14}, Lbdm;->a(I)Lbeg;

    move-result-object v1

    invoke-interface {v1, v13}, Lbeg;->a(Lbdm$b;)V

    return-void

    :cond_1
    if-eqz v9, :cond_2

    .line 1635
    invoke-interface {v9}, Laqs;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    if-ne v7, v6, :cond_3

    .line 1637
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1638
    invoke-static {}, Lbsd;->b()V

    return-void

    :cond_3
    if-eqz v8, :cond_11

    if-eq v1, v6, :cond_b

    if-eq v1, v3, :cond_a

    const/4 v3, 0x6

    if-eq v1, v3, :cond_7

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    goto/16 :goto_2

    .line 1677
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->startMusicApp()V

    const-string v1, "prev"

    .line 1678
    invoke-static {v12, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1679
    invoke-static {}, Lask;->a()Lask;

    move-result-object v1

    invoke-virtual {v1}, Lask;->b()V

    .line 1680
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1681
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->f()V

    :cond_5
    if-eqz v9, :cond_6

    .line 1685
    invoke-interface {v9}, Laqs;->c()V

    .line 1687
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->resetPlayPosition()V

    goto/16 :goto_2

    .line 1690
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->startMusicApp()V

    const-string v1, "next"

    .line 1691
    invoke-static {v12, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1692
    invoke-static {}, Lask;->a()Lask;

    move-result-object v1

    invoke-virtual {v1}, Lask;->b()V

    .line 1693
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1694
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->f()V

    :cond_8
    if-eqz v9, :cond_9

    .line 1698
    invoke-interface {v9}, Laqs;->d()V

    .line 1700
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->resetPlayPosition()V

    goto/16 :goto_2

    .line 1703
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekTo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1704
    invoke-interface {v8, v2}, Laqt;->seekTo(I)V

    goto/16 :goto_2

    .line 1646
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->startMusicApp()V

    .line 1647
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isDolbyType()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1648
    invoke-direct {v0, v9}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->handleDolbyCmd(Laqs;)V

    return-void

    .line 1652
    :cond_c
    invoke-interface {v8}, Laqt;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    if-ne v1, v6, :cond_d

    goto :goto_0

    :cond_d
    const-string v1, "play"

    .line 1657
    invoke-static {v12, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v9, :cond_e

    .line 1658
    invoke-interface {v9}, Laqs;->e()Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    .line 1662
    :cond_e
    invoke-static {}, Layg;->a()Layg;

    move-result-object v1

    invoke-virtual {v1}, Layg;->c()V

    .line 1663
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    if-nez v1, :cond_f

    .line 1665
    invoke-interface {v8}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v1, "PLAYBACK_CMD_PAUSE playDailyMusic"

    .line 1667
    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v1

    const-class v2, Lbfe;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfe;

    invoke-interface {v1}, Lbfe;->playDailyMusic()V

    return-void

    .line 1672
    :cond_f
    invoke-interface {v8}, Laqt;->play()V

    goto/16 :goto_2

    :cond_10
    :goto_0
    const-string v1, "pause"

    .line 1654
    invoke-static {v12, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1655
    invoke-interface {v8}, Laqt;->pause()V

    goto/16 :goto_2

    :cond_11
    const-string v3, "run controlModel == null: "

    .line 1708
    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->startMusicApp()V

    const/4 v3, -0x1

    if-ne v7, v3, :cond_18

    if-eqz v9, :cond_15

    .line 1711
    invoke-interface {v9}, Laqs;->f()Z

    move-result v3

    if-nez v3, :cond_15

    if-eq v1, v6, :cond_14

    const/4 v2, 0x6

    if-eq v1, v2, :cond_13

    const/4 v2, 0x7

    if-eq v1, v2, :cond_12

    return-void

    :cond_12
    const-string v1, "run: pre"

    .line 1715
    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    invoke-interface {v9}, Laqs;->c()V

    return-void

    :cond_13
    const-string v1, "run: next"

    .line 1719
    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    invoke-interface {v9}, Laqs;->d()V

    return-void

    .line 1723
    :cond_14
    invoke-direct {v0, v9}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->handleDolbyCmd(Laqs;)V

    return-void

    .line 1730
    :cond_15
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v3

    invoke-virtual {v3}, Laqr;->d()Laqt;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1731
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v3

    invoke-virtual {v3}, Laqr;->d()Laqt;

    move-result-object v3

    invoke-interface {v3}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v13

    :cond_16
    if-eqz v13, :cond_17

    .line 1733
    instance-of v3, v13, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v3, :cond_17

    .line 1734
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Laqr;->c(I)Laqt;

    move-result-object v3

    invoke-interface {v3}, Laqt;->play()V

    goto :goto_1

    .line 1736
    :cond_17
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/au;->b()V

    const-string v3, "controlModel==null -- playDailyMusic"

    .line 1737
    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v3

    const-class v4, Lbfe;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbfe;

    invoke-interface {v3}, Lbfe;->playDailyMusic()V

    .line 1741
    :cond_18
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audiotype: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but IControlModel is null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_19
    :goto_2
    return-void
.end method

.method private playMode(I)V
    .locals 3

    .line 1589
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 1590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playMode: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaCenterModel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    .line 1592
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1, v0}, Laqr;->c(I)Laqt;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 1602
    invoke-interface {v0, p1}, Laqt;->a(I)V

    goto :goto_0

    .line 1599
    :cond_1
    invoke-interface {v0, v1}, Laqt;->a(I)V

    goto :goto_0

    .line 1596
    :cond_2
    invoke-interface {v0, v2}, Laqt;->a(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private refreshBluetoothInfo()V
    .locals 19

    move-object/from16 v15, p0

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshBluetoothInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " musicclose = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    if-eqz v0, :cond_3

    .line 1206
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1207
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->x()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1208
    invoke-interface {v0}, Lbfe;->getPlayingBtInfo()Lcom/xiaopeng/musicradio/music/api/bean/a;

    move-result-object v1

    .line 1209
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/api/bean/a;->e()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1211
    invoke-direct {v15, v3}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePlaybackStatus(I)V

    .line 1213
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isMusicLogin()Z

    move-result v2

    .line 1214
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/api/bean/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/api/bean/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/api/bean/a;->b()Ljava/lang/String;

    move-result-object v6

    .line 1215
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/api/bean/a;->c()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/xiaopeng/musicradio/common/k$d;->pic_covers_music_220:I

    invoke-interface {v0}, Lbfe;->isCanCollected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/api/bean/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    move v9, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    move v9, v0

    :goto_1
    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1216
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/api/bean/a;->f()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v3, ""

    const-string v18, ""

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v8

    move v7, v9

    move-object v8, v10

    move v9, v11

    move-object/from16 v10, v18

    move v11, v12

    move v12, v13

    move-object v13, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    .line 1214
    invoke-direct/range {v0 .. v15}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorMediaInfoNotifyViaNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/xiaopeng/musicradio/bean/db/MusicInfo;ILjava/lang/String;ZILjava/lang/String;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V

    move-object/from16 v1, p0

    goto :goto_2

    :cond_3
    const/4 v0, 0x3

    move-object/from16 v1, p0

    .line 1218
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->reset(I)V

    :goto_2
    return-void
.end method

.method private refreshInfo(I)V
    .locals 4

    .line 961
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isDolbyType()Z

    move-result v0

    const-string v1, "MediaCenterModel"

    if-eqz v0, :cond_0

    const-string p1, "refreshInfo isDolbyType return"

    .line 962
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-nez v0, :cond_1

    const-string p1, "mMediaCenterManager is null"

    .line 966
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 969
    :cond_1
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const/4 p1, 0x0

    .line 971
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->reset(I)V

    return-void

    :cond_2
    if-eq v0, p1, :cond_3

    .line 975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh return by : currentType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", info.getAudioType()\uff1a "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 978
    :cond_3
    new-instance p1, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$13;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$13;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private refreshMusicInfo()V
    .locals 20

    move-object/from16 v15, p0

    .line 1150
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1152
    invoke-interface {v0}, Lbfe;->getPlayingInfo()Lcom/xiaopeng/musicradio/music/api/bean/b;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1154
    invoke-interface {v0}, Lbfe;->getPlayerAccountType()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    if-ne v3, v4, :cond_2

    const/16 v3, 0x9

    goto :goto_0

    .line 1163
    :cond_2
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->i()I

    move-result v3

    const/16 v6, 0x3d

    if-ne v3, v6, :cond_3

    const/4 v3, 0x5

    goto :goto_0

    :cond_3
    move v3, v1

    .line 1165
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getCurrentMode()I

    move-result v6

    if-ne v6, v5, :cond_4

    .line 1167
    invoke-interface {v0}, Lbfe;->getListSign()Ljava/lang/String;

    move-result-object v6

    .line 1168
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1169
    const-class v7, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {v6, v7}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    if-eqz v6, :cond_4

    .line 1171
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getPrefix()Ljava/lang/String;

    move-result-object v6

    const-string v7, "listsign_local_rm_music"

    .line 1172
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v9, v4

    goto :goto_1

    :cond_4
    move v9, v3

    .line 1179
    :goto_1
    invoke-interface {v0}, Lbfe;->getPreInfo()Lcom/xiaopeng/musicradio/music/api/bean/b;

    move-result-object v3

    .line 1180
    invoke-interface {v0}, Lbfe;->getNextInfo()Lcom/xiaopeng/musicradio/music/api/bean/b;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    .line 1184
    new-instance v7, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/music/api/bean/b;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/music/api/bean/b;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/music/api/bean/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v15, v8, v10, v3}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v7

    goto :goto_2

    :cond_5
    move-object v14, v6

    :goto_2
    if-eqz v4, :cond_6

    .line 1187
    new-instance v3, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/music/api/bean/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/music/api/bean/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/music/api/bean/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v15, v6, v7, v4}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v3

    goto :goto_3

    :cond_6
    move-object/from16 v16, v6

    .line 1190
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isMusicLogin()Z

    move-result v3

    .line 1191
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->d()Ljava/lang/String;

    move-result-object v8

    sget v10, Lcom/xiaopeng/musicradio/common/k$d;->pic_covers_music_220:I

    .line 1192
    invoke-interface {v0}, Lbfe;->isCanCollected()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    move v11, v5

    goto :goto_4

    :cond_7
    move v11, v1

    goto :goto_4

    :cond_8
    const/4 v0, -0x1

    move v11, v0

    :goto_4
    const/4 v12, 0x0

    .line 1193
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->g()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->h()Z

    move-result v17

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->j()I

    move-result v18

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->k()Ljava/lang/String;

    move-result-object v19

    const-string v3, ""

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v6

    move-object v4, v7

    move-object v5, v8

    move v6, v10

    move v7, v11

    move-object v8, v12

    move-object v10, v13

    move/from16 v11, v17

    move/from16 v12, v18

    move-object/from16 v13, v19

    move-object/from16 v15, v16

    .line 1191
    invoke-direct/range {v0 .. v15}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorMediaInfoNotifyViaNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/xiaopeng/musicradio/bean/db/MusicInfo;ILjava/lang/String;ZILjava/lang/String;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V

    goto :goto_5

    :cond_9
    move-object v0, v15

    .line 1195
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->reset(I)V

    goto :goto_5

    :cond_a
    move-object v0, v15

    .line 1198
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->reset(I)V

    :goto_5
    return-void
.end method

.method private refreshNetRadioInfo()V
    .locals 18

    move-object/from16 v15, p0

    .line 1008
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbjs;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjs;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 1010
    invoke-interface {v0}, Lbjs;->getPlayingNetRadioInfo()Lbjt;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1012
    invoke-interface {v0}, Lbjs;->getPreNetRadioInfo()Lbjt;

    move-result-object v3

    .line 1013
    invoke-interface {v0}, Lbjs;->getNextNetRadioInfo()Lbjt;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1017
    new-instance v5, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;

    invoke-virtual {v3}, Lbjt;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lbjt;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lbjt;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v15, v6, v7, v3}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v5

    goto :goto_0

    :cond_0
    move-object v13, v4

    :goto_0
    if-eqz v0, :cond_1

    .line 1020
    new-instance v3, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;

    invoke-virtual {v0}, Lbjt;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lbjt;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lbjt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v15, v4, v5, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v3

    goto :goto_1

    :cond_1
    move-object v14, v4

    .line 1023
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isReadLogin()Z

    move-result v0

    .line 1024
    invoke-virtual {v2}, Lbjt;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lbjt;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lbjt;->a()Ljava/lang/String;

    move-result-object v5

    .line 1025
    invoke-virtual {v2}, Lbjt;->c()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/xiaopeng/musicradio/common/k$d;->pic_covers_music_220:I

    .line 1026
    invoke-virtual {v2}, Lbjt;->d()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    move v8, v0

    :goto_2
    invoke-virtual {v2}, Lbjt;->e()J

    move-result-wide v9

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v16, ""

    const-string v17, ""

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    move-object/from16 v3, v16

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move-wide v8, v9

    move v10, v11

    move v11, v12

    move-object/from16 v12, v17

    .line 1024
    invoke-direct/range {v0 .. v14}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorMediaInfoNotifyViaNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIZLjava/lang/String;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V

    goto :goto_3

    .line 1029
    :cond_3
    invoke-virtual {v15, v1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->reset(I)V

    goto :goto_3

    .line 1032
    :cond_4
    invoke-virtual {v15, v1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->reset(I)V

    :goto_3
    return-void
.end method

.method private refreshProgramInfo()V
    .locals 17

    move-object/from16 v15, p0

    .line 1223
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lblp;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblp;

    if-eqz v0, :cond_4

    .line 1225
    invoke-interface {v0}, Lblp;->getPlayingInfo()Lbls;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1228
    invoke-virtual {v1}, Lbls;->b()J

    move-result-wide v8

    .line 1229
    invoke-interface {v0}, Lblp;->getPreInfo()Lbls;

    move-result-object v2

    .line 1230
    invoke-interface {v0}, Lblp;->getNextInfo()Lbls;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1234
    new-instance v4, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;

    invoke-virtual {v2}, Lbls;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lbls;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lbls;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v15, v5, v6, v2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v4

    goto :goto_0

    :cond_0
    move-object v13, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 1237
    new-instance v2, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;

    invoke-virtual {v0}, Lbls;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lbls;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lbls;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v15, v3, v4, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v2

    goto :goto_1

    :cond_1
    move-object v14, v3

    .line 1240
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isReadLogin()Z

    move-result v0

    .line 1241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshProgramInfo: ====== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lbls;->f()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "login = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaCenterModel"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    invoke-virtual {v1}, Lbls;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lbls;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lbls;->e()Ljava/lang/String;

    move-result-object v4

    .line 1243
    invoke-virtual {v1}, Lbls;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lbls;->c()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/xiaopeng/musicradio/common/k$d;->pic_covers_music_220:I

    .line 1244
    invoke-virtual {v1}, Lbls;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move v10, v0

    const/4 v11, 0x2

    const/4 v12, 0x0

    const-string v16, ""

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v10

    move v10, v11

    move v11, v12

    move-object/from16 v12, v16

    .line 1242
    invoke-direct/range {v0 .. v14}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorMediaInfoNotifyViaNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIZLjava/lang/String;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V

    goto :goto_3

    :cond_3
    const/4 v0, 0x2

    .line 1247
    invoke-virtual {v15, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->reset(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method private registerListener()V
    .locals 4

    .line 286
    :try_start_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MediaCenterModel"

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener.. isRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 289
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_1

    .line 296
    :try_start_1
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mListner:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->vendorSetControlListener(Landroid/content/Context;Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;)V

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->modeChangedListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerModeChangedListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedListener;)V

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    new-instance v1, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$5;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerBtStatusListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListener;)V

    .line 305
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$v;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getCurrentMode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$v;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private resetPlayPosition()V
    .locals 5

    .line 698
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isDolbyType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 701
    :cond_0
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 702
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePosition(JJ)V

    goto :goto_0

    .line 704
    :cond_1
    invoke-direct {p0, v2, v3, v2, v3}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePosition(JJ)V

    :goto_0
    return-void
.end method

.method private setMediaSessionPlayState(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    .line 1763
    :cond_3
    :goto_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->d()Laqt;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1764
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->d()Laqt;

    move-result-object p1

    invoke-interface {p1}, Laqt;->getPosition()I

    move-result v3

    :cond_4
    const-wide/16 v4, 0x7b6

    .line 1775
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    if-nez p1, :cond_5

    const-wide/32 v4, 0x2407b6

    .line 1779
    :cond_5
    new-instance p1, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v2, v3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1780
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p1

    .line 1781
    invoke-virtual {p1, v4, v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object p1

    .line 1782
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    .line 1783
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_6

    .line 1784
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    :cond_6
    return-void
.end method

.method private setupMediaSession()V
    .locals 3

    .line 1394
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const-string v2, "MediaSession"

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 1396
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 1400
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->callback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 1401
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    return-void
.end method

.method private shouldRefreshMeida()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private startMusicApp()V
    .locals 2

    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMusicApp:isMusicLogin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isMusicLogin()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isReadLogin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isReadLogin()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1264
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1266
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/b;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private switchAudio(II)V
    .locals 2

    .line 1553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchAudio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    new-instance v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$17;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$17;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;II)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateMetaData(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;JLjava/lang/String;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v0, p5

    move-object/from16 v6, p6

    .line 552
    iput-wide v3, v1, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMetaDuration:J

    .line 553
    new-instance v7, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v7}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 554
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.media.metadata.TITLE"

    invoke-virtual {v7, v9, v8}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v7

    .line 555
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.media.metadata.ARTIST"

    invoke-virtual {v7, v9, v8}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v7

    .line 556
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getAlbum()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.media.metadata.ALBUM"

    invoke-virtual {v7, v9, v8}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v7

    .line 557
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v7, v9, v8}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v3

    const-string v10, "android.media.metadata.DURATION"

    .line 558
    invoke-virtual {v7, v10, v8, v9}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v7

    const-string v10, "startPosition"

    .line 559
    invoke-virtual {v2, v10}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v7, v10, v11, v12}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v7

    const-string v10, "isDefaultContent"

    .line 560
    invoke-virtual {v2, v10}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v7

    .line 561
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getAlbumBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    const-string v11, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v7, v11, v10}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v7

    const-string v10, "lyricInfo"

    .line 562
    invoke-virtual {v7, v10, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v7

    .line 563
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getSource()I

    move-result v10

    int-to-long v10, v10

    const-string v12, "playSource"

    invoke-virtual {v7, v12, v10, v11}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v7

    .line 564
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "albumUri"

    const-string v12, "artist"

    const-string v13, "title"

    const-string v14, "updateMetaData: "

    const-string v15, "MediaCenterModel"

    if-eqz v0, :cond_0

    .line 567
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 568
    iget-object v5, v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    iget-object v5, v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;->artist:Ljava/lang/String;

    invoke-virtual {v2, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;->albumUri:Ljava/lang/String;

    invoke-virtual {v2, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "preItem"

    .line 571
    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 573
    invoke-static {v15, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 578
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 579
    iget-object v2, v6, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 580
    iget-object v2, v6, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    iget-object v2, v6, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;->albumUri:Ljava/lang/String;

    invoke-virtual {v0, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nextItem"

    .line 582
    invoke-virtual {v10, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 584
    invoke-static {v15, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    :cond_1
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "playList"

    .line 588
    invoke-virtual {v7, v2, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 589
    iget-object v2, v1, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaStr:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 590
    iput-object v0, v1, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaStr:Ljava/lang/String;

    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " list = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->configPlayerPending()V

    .line 596
    iget-object v0, v1, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_3

    .line 598
    :try_start_2
    invoke-virtual {v7}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 600
    invoke-static {v15, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMetaData--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--duration--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " lyric = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePositionInOtherEvent()V
    .locals 5

    .line 691
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    .line 693
    invoke-interface {v0}, Laqt;->getPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0}, Laqt;->getDuration()I

    move-result v0

    int-to-long v3, v0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePosition(JJ)V

    :cond_0
    return-void
.end method

.method private vendorMediaInfoNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZZILjava/lang/String;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    const-string v1, ","

    .line 387
    iget-object v2, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-nez v2, :cond_0

    return-void

    .line 390
    :cond_0
    new-instance v11, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-direct {v11}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;-><init>()V

    .line 391
    invoke-virtual {v11, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setId(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v11, v4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setTitle(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v11, v5}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setAlbum(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v11, v6}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setArtist(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 396
    invoke-virtual {v11, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setXpMusic(Z)V

    .line 397
    invoke-virtual {v11, v8}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setFavor(I)V

    .line 398
    invoke-virtual {v11, v9}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setSource(I)V

    move-object/from16 v10, p8

    .line 399
    invoke-virtual {v11, v10}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setStyleName(Ljava/lang/String;)V

    move/from16 v2, p9

    .line 400
    invoke-virtual {v11, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setAudition(Z)V

    .line 401
    invoke-static/range {p11 .. p11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "startPosition"

    invoke-virtual {v11, v3, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isDefaultContent"

    invoke-virtual {v11, v3, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {}, Layh;->a()Layh;

    move-result-object v2

    invoke-virtual {v2}, Layh;->e()Layh$b;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 405
    sget v3, Lcom/xiaopeng/util/FeatureOption;->FO_ICM_TYPE:I

    if-nez v3, :cond_1

    if-nez p10, :cond_2

    .line 406
    invoke-virtual {v2}, Layh$b;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Layh;->a()Layh;

    move-result-object v3

    invoke-virtual {v3}, Layh;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 409
    :cond_1
    invoke-virtual {v2}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setAlbumBitmap(Landroid/graphics/Bitmap;)V

    .line 416
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isDolbyType()Z

    move-result v3

    const-string v7, "MediaCenterModel"

    if-eqz v3, :cond_3

    .line 417
    iget-object v12, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->masterBitmap:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_3

    .line 418
    invoke-virtual {v11, v12}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setAlbumBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    const-string v12, "vendorMediaInfoNotify ============ masterBitmap == null: "

    .line 420
    invoke-static {v7, v12}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    :goto_0
    :try_start_0
    iget-object v12, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    if-eqz v12, :cond_7

    iget-object v12, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 425
    invoke-virtual {v12}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v15, v12, v4}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isContentEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 426
    invoke-virtual {v12}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getAlbum()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v15, v12, v5}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isContentEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 427
    invoke-virtual {v12}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v15, v12, v6}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isContentEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_6

    .line 448
    invoke-virtual {v2}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "vmi: "

    if-eqz v0, :cond_5

    .line 449
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Layh$b;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 451
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Layh$b;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_1
    move/from16 p9, v3

    goto/16 :goto_5

    :cond_7
    :goto_2
    const-string v12, ", id: "

    const-string v13, ", source: "

    const-string v14, ", artist: "

    const-string v10, ", album: "

    move/from16 p9, v3

    const-string v3, "vendorMediaInfoNotifyViaNet.. title: "

    if-eqz v2, :cond_9

    .line 429
    :try_start_2
    invoke-virtual {v2}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v16

    if-eqz v16, :cond_8

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "vmi."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v2}, Layh$b;->f()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v2}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " audio = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    invoke-virtual {v0}, Lask;->l()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 434
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isDefault = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v2}, Layh$b;->f()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    .line 438
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :goto_3
    iget-object v0, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    if-nez v0, :cond_a

    .line 442
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->updatePositionInOtherEvent()V

    goto :goto_5

    .line 444
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->resetPlayPosition()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_1
    move-exception v0

    move/from16 p9, v3

    .line 456
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    :goto_5
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 460
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1, v0}, Laqr;->c(I)Laqt;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_b

    .line 463
    invoke-interface {v0}, Laqt;->getDuration()I

    move-result v0

    int-to-long v0, v0

    :goto_6
    move-wide v13, v0

    goto :goto_7

    .line 465
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isDolbyType()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 466
    iget-wide v0, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMasterDuration:J

    goto :goto_6

    :cond_c
    move-wide v13, v1

    .line 471
    :goto_7
    iget-object v0, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    if-eqz v0, :cond_e

    .line 472
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0, v4}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isContentEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 473
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0, v5}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isContentEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 474
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0, v6}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isContentEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 476
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getSource()I

    move-result v0

    if-ne v0, v9, :cond_e

    iget-object v0, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 477
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getFavor()I

    move-result v0

    if-ne v0, v8, :cond_e

    iget-object v0, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 478
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getAlbumBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v11}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getAlbumBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-ne v0, v1, :cond_e

    iget-wide v0, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMetaDuration:J

    cmp-long v0, v0, v13

    if-nez v0, :cond_e

    iget-object v0, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastLrc:Ljava/lang/String;

    move-object/from16 v12, p12

    .line 480
    invoke-static {v0, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_8

    :cond_d
    move-object v1, v15

    goto :goto_9

    :cond_e
    move-object/from16 v12, p12

    .line 481
    :goto_8
    new-instance v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p9

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v1 .. v16}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;Ljava/lang/String;JLcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->doSend(Ljava/lang/Runnable;)V

    :goto_9
    return-void
.end method

.method private vendorMediaInfoNotifyViaNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIZLjava/lang/String;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V
    .locals 16

    move-object/from16 v15, p0

    .line 366
    iget-object v0, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v8, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p10

    move/from16 v9, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    .line 369
    invoke-direct/range {v0 .. v14}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorMediaInfoNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZZILjava/lang/String;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V

    return-void
.end method

.method private vendorMediaInfoNotifyViaNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/xiaopeng/musicradio/bean/db/MusicInfo;ILjava/lang/String;ZILjava/lang/String;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V
    .locals 16

    move-object/from16 v15, p0

    .line 352
    iget-object v0, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    .line 355
    invoke-direct/range {v0 .. v14}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorMediaInfoNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZZILjava/lang/String;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V

    return-void
.end method

.method private vendorNotifyDolbyLyricUpdated()V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-nez v0, :cond_0

    return-void

    .line 675
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$9;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$9;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->doSend(Ljava/lang/Runnable;)V

    return-void
.end method

.method private vendorNotifyLyricUpdated()V
    .locals 5

    .line 624
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-nez v0, :cond_0

    return-void

    .line 627
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    .line 631
    :cond_1
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1, v0}, Laqr;->c(I)Laqt;

    move-result-object v0

    .line 632
    invoke-interface {v0}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v0

    .line 633
    new-instance v1, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;-><init>()V

    if-eqz v0, :cond_4

    .line 635
    instance-of v2, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v2, :cond_3

    .line 636
    move-object v2, v0

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 637
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setSongId(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setSongName(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setArtistName(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setAlbumName(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setLyricContent(Ljava/lang/String;)V

    .line 642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vendorNotifyLyricUpdated--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaCenterModel"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 644
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    const-string v4, "local_usb_prefix_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    const-string v4, "local_prefix_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 645
    :cond_2
    new-instance v3, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$m;

    invoke-direct {v3, v2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$m;-><init>(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 647
    :cond_3
    instance-of v2, v0, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    if-eqz v2, :cond_4

    .line 648
    move-object v2, v0

    check-cast v2, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    .line 649
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setSongId(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setSongName(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setArtistName(Ljava/lang/String;)V

    const-string v3, ""

    .line 652
    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setAlbumName(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getLrcContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setLyricContent(Ljava/lang/String;)V

    .line 656
    :cond_4
    :goto_0
    new-instance v2, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$8;

    invoke-direct {v2, p0, v0, v1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$8;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Lcom/xiaopeng/musicradio/bean/BaseInfo;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->doSend(Ljava/lang/Runnable;)V

    return-void
.end method

.method private vendorUpdatePlaybackStatus(I)V
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-nez v0, :cond_0

    const-string p1, "MediaCenterModel"

    const-string v0, "vendorUpdatePlaybackStatus cancel: mMediaCenterManager == null"

    .line 713
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 716
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$10;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$10;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->doSend(Ljava/lang/Runnable;)V

    return-void
.end method

.method private vendorUpdatePosition(JJ)V
    .locals 8

    .line 733
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 737
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v1

    const-class v2, Lbfe;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfe;

    if-eqz v1, :cond_1

    .line 739
    invoke-interface {v1}, Lbfe;->isInCall()Z

    move-result v0

    :cond_1
    const-string v1, "MediaCenterModel"

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    const-string p1, "update position skip, as in call && position is reset"

    .line 742
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    cmp-long v0, p1, v2

    if-ltz v0, :cond_4

    cmp-long v0, p3, v2

    if-ltz v0, :cond_4

    .line 746
    iget-wide v2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastDuration:J

    cmp-long v0, v2, p3

    if-nez v0, :cond_3

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastPosition:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_3

    .line 747
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "update position skip, as the same pos = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 750
    :cond_3
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastPosition:J

    .line 751
    iput-wide p3, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastDuration:J

    .line 752
    new-instance v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$11;

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$11;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;JJ)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->doSend(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealAudioInfo.. type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshInfo(I)V

    .line 1040
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;->a()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 1041
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorNotifyDolbyLyricUpdated()V

    return-void

    .line 1044
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorNotifyLyricUpdated()V

    return-void
.end method

.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$n;)V
    .locals 16
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    move-object/from16 v15, p0

    .line 1103
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$n;->c()Ljava/lang/String;

    move-result-object v2

    .line 1104
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$n;->b()Ljava/lang/String;

    move-result-object v5

    .line 1105
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$n;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->masterBitmap:Landroid/graphics/Bitmap;

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshMasterInfo Infoflow\u66f4\u65b0\u5927\u5e08\u5b9a\u5236\u4fe1\u606f name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",, masterBitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->masterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",, masterPlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->masterPlayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isDolbyType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    sget v6, Lcom/xiaopeng/musicradio/common/k$d;->pic_covers_music_220:I

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v1, ""

    const-string v3, ""

    const-string v4, ""

    const-string v12, ""

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorMediaInfoNotifyViaNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIZLjava/lang/String;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V

    :cond_0
    return-void
.end method

.method public dealAudioPos(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 849
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-nez v0, :cond_0

    return-void

    .line 852
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 853
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->a()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isDolbyType()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 857
    :cond_1
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1, v0}, Laqr;->c(I)Laqt;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 859
    invoke-interface {v1}, Laqt;->getDuration()I

    move-result v2

    if-ltz v2, :cond_3

    .line 860
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->b()I

    move-result v2

    if-lez v2, :cond_2

    .line 861
    invoke-interface {v1}, Laqt;->getPosition()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->b()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePosition(JJ)V

    goto :goto_0

    .line 863
    :cond_2
    invoke-interface {v1}, Laqt;->getPosition()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1}, Laqt;->getDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePosition(JJ)V

    .line 866
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 867
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    invoke-interface {v1}, Laqt;->getPlayState()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;-><init>(II)V

    const/4 v0, 0x1

    .line 868
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->a(Z)V

    .line 869
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->dealPlayState(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public dealAudioTypeChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 786
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->resetAudioInfoRecord()V

    .line 787
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->updatePositionInOtherEvent()V

    .line 788
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;->a()I

    move-result p1

    .line 789
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0, p1}, Laqr;->c(I)Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 791
    new-instance v1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v0

    invoke-direct {v1, p1, v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->dealPlayState(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V

    .line 792
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x0

    .line 795
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePosition(JJ)V

    :cond_1
    return-void
.end method

.method public dealLoveEvent(Lasj$r;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 934
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    if-nez p1, :cond_0

    .line 935
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshInfo(I)V

    :cond_0
    return-void
.end method

.method public dealMasterPlayState(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$o;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealMasterPlayState masterPlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->masterPlayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$o;->a()I

    move-result p1

    .line 880
    iput p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->masterPlayState:I

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealMasterPlayState state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 885
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePlaybackStatus(I)V

    goto :goto_1

    .line 887
    :cond_1
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePlaybackStatus(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 883
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePlaybackStatus(I)V

    :goto_1
    return-void
.end method

.method public dealMasterPos(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$p;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 894
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$p;->a()I

    move-result v0

    const/4 v1, 0x7

    if-ne v1, v0, :cond_1

    .line 895
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$p;->c()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 898
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$p;->c()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMasterDuration:J

    .line 899
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$p;->b()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$p;->c()I

    move-result p1

    int-to-long v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePosition(JJ)V

    :cond_1
    return-void
.end method

.method public dealMusicLogoInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$r;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MediaCenterModel"

    const-string v0, "dealMusicLogoInfo.. "

    .line 1078
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1079
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshInfo(I)V

    return-void
.end method

.method public dealNetRadioLove(Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 948
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 949
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshInfo(I)V

    :cond_0
    return-void
.end method

.method public dealPlayState(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 802
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isDolbyType()Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "MediaCenterModel"

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 803
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealPlayState123: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 806
    iput v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->masterPlayState:I

    .line 807
    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-nez v3, :cond_2

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealPlayState.. mLastPlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastPlayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 811
    :cond_2
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v3

    invoke-virtual {v3}, Laqr;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealPlayState.. skip. AudioTypeControlModel.getInstance().getAudioType(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playState.getAudioType(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 812
    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 817
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v3

    .line 818
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->a()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mOldEvnetPlayState:Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    if-eqz v4, :cond_4

    invoke-virtual {v4, p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string p1, "dealPlayState: ========="

    .line 819
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 822
    :cond_4
    new-instance v4, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v5

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;-><init>(II)V

    iput-object v4, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mOldEvnetPlayState:Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    .line 824
    iput v3, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastPlayState:I

    .line 825
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dps playState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    if-eq v3, p1, :cond_7

    const/4 v2, 0x1

    if-ne v3, v2, :cond_5

    goto :goto_0

    :cond_5
    if-ne v3, v1, :cond_6

    .line 829
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePlaybackStatus(I)V

    goto :goto_1

    .line 831
    :cond_6
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePlaybackStatus(I)V

    goto :goto_1

    .line 827
    :cond_7
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePlaybackStatus(I)V

    .line 833
    :goto_1
    new-instance p1, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$12;

    invoke-direct {p1, p0, v3}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$12;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    .line 843
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->updatePositionInOtherEvent()V

    return-void
.end method

.method public dealReadLoveEvent(Lasj$x;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 941
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 942
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshInfo(I)V

    :cond_0
    return-void
.end method

.method public dealTryListen(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ac;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 955
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    if-nez p1, :cond_0

    .line 956
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshInfo(I)V

    :cond_0
    return-void
.end method

.method public getBtStatus()I
    .locals 1

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->getBtStatus()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentMode()I
    .locals 1

    .line 1291
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 1293
    :try_start_0
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->getCurrentMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1295
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getScreenPos()I
    .locals 1

    .line 1387
    iget v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mScreenPos:I

    return v0
.end method

.method public isXpMusicShowingInInfoflow()Z
    .locals 2

    .line 1302
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1305
    :try_start_0
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->getCurrentMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1307
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v0
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1310
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public onBindSuccess(Lasj$n;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 915
    invoke-virtual {p1}, Lasj$n;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 916
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshInfo(I)V

    :cond_0
    return-void
.end method

.method public onDownloadProgram(Lblv$a;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 922
    invoke-virtual {p1}, Lblv$a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 923
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshInfo(I)V

    :cond_0
    return-void
.end method

.method public onLangugeChange(Larv$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 780
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshInfo(I)V

    return-void
.end method

.method public onListRefresh(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 1049
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onListRefresh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->a()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshInfo(I)V

    return-void
.end method

.method public onLogin(Lasj$af;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 910
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshInfo(I)V

    return-void
.end method

.method public onLogout(Lasj$ag;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 905
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshInfo(I)V

    return-void
.end method

.method public onPlaybackControl(II)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mListner:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;->OnPlaybackControl(II)I

    :cond_0
    return-void
.end method

.method public onPowerChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 16
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    move-object/from16 v15, p0

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPowerChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isDolbyType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPowerChange title: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object v0, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget v6, Lcom/xiaopeng/musicradio/common/k$d;->pic_covers_music_220:I

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v1, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v12, ""

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorMediaInfoNotifyViaNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIZLjava/lang/String;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V

    return-void

    .line 1091
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "reset last mediaInfo"

    .line 1092
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1093
    iput-object v0, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 1094
    iput-object v0, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastLrc:Ljava/lang/String;

    goto :goto_0

    .line 1096
    :cond_1
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    invoke-direct {v15, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshInfo(I)V

    :goto_0
    return-void
.end method

.method public onRefreshLogo(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ap;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 929
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshInfo(I)V

    return-void
.end method

.method public pauseBtRender()Z
    .locals 4

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->pauseBtMedia()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "MediaCenterModel"

    const-string v3, "pauseBtRender exception"

    .line 340
    invoke-static {v2, v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    :goto_0
    return v0
.end method

.method public refreshLrc(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$a;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 1064
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 1065
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$a;->a()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshInfo(I)V

    return-void
.end method

.method public refreshLrc(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$l;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1056
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$l;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1058
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshMusicInfo()V

    :cond_0
    return-void
.end method

.method public registerVisiual(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 277
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaCenterModel"

    const-string v1, "registerVisiual: "

    .line 279
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1405
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 1406
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 1407
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    return-void
.end method

.method public reset(I)V
    .locals 16

    move-object/from16 v15, p0

    .line 1114
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->isDolbyType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1117
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->tip_init_title:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->tip_init_sub_title:I

    .line 1118
    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->tip_init_sub_title:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v1, ""

    const-string v8, ""

    const-string v12, ""

    move-object/from16 v0, p0

    move/from16 v7, p1

    .line 1117
    invoke-direct/range {v0 .. v14}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorMediaInfoNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZZILjava/lang/String;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V

    const/4 v0, 0x3

    .line 1120
    iput v0, v15, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastPlayState:I

    const/4 v0, 0x1

    .line 1121
    invoke-direct {v15, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePlaybackStatus(I)V

    const-wide/16 v0, 0x0

    .line 1122
    invoke-direct {v15, v0, v1, v0, v1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorUpdatePosition(JJ)V

    .line 1124
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/a;->c()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1125
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1128
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->configPlayerPending()V

    goto :goto_1

    .line 1126
    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->configHomePending()V

    :goto_1
    return-void
.end method

.method public resetAudioInfoRecord()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1322
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastPosition:J

    .line 1323
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastDuration:J

    const/4 v0, 0x0

    .line 1324
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 1325
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mLastLrc:Ljava/lang/String;

    return-void
.end method

.method public setA2dpVolume(F)Z
    .locals 1

    .line 1329
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    if-eqz v0, :cond_0

    .line 1330
    new-instance v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$15;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$15;-><init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;F)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->doSend(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setShareEvent(Ljava/lang/String;I)V
    .locals 2

    .line 1359
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->wmf:Lcom/xiaopeng/view/WindowManagerFactory;

    if-nez v0, :cond_0

    .line 1360
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/view/WindowManagerFactory;->create(Landroid/content/Context;)Lcom/xiaopeng/view/WindowManagerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->wmf:Lcom/xiaopeng/view/WindowManagerFactory;

    .line 1362
    :cond_0
    iput p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mScreenPos:I

    const-string v0, "music"

    .line 1363
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1364
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->wmf:Lcom/xiaopeng/view/WindowManagerFactory;

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, p2, v0}, Lcom/xiaopeng/view/WindowManagerFactory;->setSharedEvent(IILjava/lang/String;)V

    .line 1365
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->wmf:Lcom/xiaopeng/view/WindowManagerFactory;

    const-string v0, "com.android.bluetooth"

    invoke-virtual {p1, v1, p2, v0}, Lcom/xiaopeng/view/WindowManagerFactory;->setSharedEvent(IILjava/lang/String;)V

    .line 1366
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$au;

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$au;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public startBtRender()Z
    .locals 3

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->mMediaCenterManager:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->playBtMedia()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaCenterModel"

    const-string v2, "startBtRender exception"

    .line 326
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateBtInfo(Lasj$a;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1070
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateBtInfo, audioType:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCenterModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1071
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1072
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->refreshBluetoothInfo()V

    :cond_0
    return-void
.end method
