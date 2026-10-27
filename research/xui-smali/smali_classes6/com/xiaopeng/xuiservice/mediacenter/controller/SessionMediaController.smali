.class public Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;
.super Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;
.source "SessionMediaController.java"


# static fields
.field public static final ACTION_SET_CAPTIONING_ENABLED:J = 0x100000L

.field public static final ACTION_SET_REPEAT_MODE:J = 0x40000L

.field public static final ACTION_SET_SHUFFLE_MODE:J = 0x200000L

.field public static final ACTION_SET_SHUFFLE_MODE_ENABLED:J = 0x80000L

.field private static final REPEAT_MODE_ALL:I = 0x2

.field private static final REPEAT_MODE_NONE:I = 0x0

.field private static final REPEAT_MODE_ONE:I = 0x1

.field public static final SHUFFLE_MODE_ALL:I = 0x1

.field public static final SHUFFLE_MODE_GROUP:I = 0x2

.field public static final SHUFFLE_MODE_INVALID:I = -0x1

.field public static final SHUFFLE_MODE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MCService-SessionMediaController"


# instance fields
.field private KEY_CUSTOM_SPEED:Ljava/lang/String;

.field private isXpSession:Z

.field private mDisplayId:I

.field private mLoadCallback:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;

.field private mLyricInfo:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

.field private mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

.field private final mMediaListener:Landroid/media/session/MediaController$Callback;

.field private mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

.field private mPlayStatus:I

.field private mPositions:[J

.field private mSessionStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionStatusListener;

.field mXpPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

.field updatePositionTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 74
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPlayStatus:I

    .line 68
    const-string v0, "playbackSpeed-"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->KEY_CUSTOM_SPEED:Ljava/lang/String;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPositions:[J

    .line 520
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaListener:Landroid/media/session/MediaController$Callback;

    .line 897
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$3;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->updatePositionTask:Ljava/lang/Runnable;

    .line 939
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$4;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mLoadCallback:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;

    .line 951
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$5;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mXpPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    .line 75
    iput p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mDisplayId:I

    .line 76
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;
    .param p1, "x1"    # Z

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyPlayStatus(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mSessionStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionStatusListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)[J
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPositions:[J

    return-object v0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyPositionChanged(JJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isNeedPosition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyClientLyric(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mLyricInfo:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;
    .param p1, "x1"    # I

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isPlaybackPlaying(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;
    .param p1, "x1"    # Z

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->startOrPausePositionCountDown(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Landroid/media/MediaMetadata;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;
    .param p1, "x1"    # Landroid/media/MediaMetadata;
    .param p2, "x2"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyMediaMetaDataInner(Landroid/media/MediaMetadata;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->refreshPosition()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Landroid/media/session/MediaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;
    .param p1, "x1"    # Landroid/media/session/MediaController;

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isPlayingStatus(Landroid/media/session/MediaController;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyListenerMediaInfo(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;J)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;
    .param p1, "x1"    # J

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->getPosition(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private adaptationXpMusic(Landroid/media/session/MediaController;)V
    .locals 2
    .param p1, "mediaController"    # Landroid/media/session/MediaController;

    .line 576
    sget-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->XP_Music_Session_Control:Z

    if-eqz v0, :cond_1

    .line 577
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isXpSession(Landroid/media/session/MediaController;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isXpSession:Z

    .line 578
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isXpSession:Z

    if-eqz v0, :cond_0

    .line 579
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mXpPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->registerListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;)V

    goto :goto_0

    .line 581
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mXpPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->unregisterListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;)V

    .line 584
    :cond_1
    :goto_0
    return-void
.end method

.method private clearCurrentMediaNotificationSession()V
    .locals 3

    .line 743
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 744
    const-string v0, "MCService-SessionMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting from old controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaListener:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 747
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 748
    return-void
.end method

.method private favorite()Z
    .locals 5

    .line 836
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 837
    const-string v0, "like"

    const-string v1, "heart"

    const-string v2, "liketrack"

    const-string v3, "follow"

    const-string v4, "favorite"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->findCustomAction([Ljava/lang/String;)Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v0

    .line 838
    .local v0, "favoriteAction":Landroid/media/session/PlaybackState$CustomAction;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 839
    const-string v2, "MCService-SessionMediaController"

    const-string v3, "favorite action find to do"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->sendCustomActionToClient(Landroid/media/session/PlaybackState$CustomAction;)V

    .line 841
    return v1

    .line 842
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    const-wide/16 v3, 0x80

    invoke-direct {p0, v2, v3, v4}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isActionSupport(Landroid/media/session/PlaybackState;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 843
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    .line 844
    .local v2, "transportControls":Landroid/media/session/MediaController$TransportControls;
    if-eqz v2, :cond_1

    .line 845
    const-string v3, "MCService-SessionMediaController"

    const-string v4, "transportControls newHeartRating true"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    invoke-static {v1}, Landroid/media/Rating;->newHeartRating(Z)Landroid/media/Rating;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V

    .line 847
    return v1

    .line 851
    .end local v0    # "favoriteAction":Landroid/media/session/PlaybackState$CustomAction;
    .end local v2    # "transportControls":Landroid/media/session/MediaController$TransportControls;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private findCustomAction(Ljava/lang/String;)Landroid/media/session/PlaybackState$CustomAction;
    .locals 8
    .param p1, "keyWord"    # Ljava/lang/String;

    .line 234
    const-string v0, "MCService-SessionMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findCustomAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v0

    .line 237
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/PlaybackState$CustomAction;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/PlaybackState$CustomAction;

    .line 238
    .local v3, "action":Landroid/media/session/PlaybackState$CustomAction;
    invoke-virtual {v3}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "actionString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 240
    const-string v5, "MCService-SessionMediaController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findCustomAction actionString:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 242
    .local v5, "support":Z
    if-eqz v5, :cond_0

    .line 243
    return-object v3

    .line 248
    .end local v3    # "action":Landroid/media/session/PlaybackState$CustomAction;
    .end local v4    # "actionString":Ljava/lang/String;
    .end local v5    # "support":Z
    :cond_1
    goto :goto_0

    .line 249
    :cond_2
    return-object v1

    .line 251
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/PlaybackState$CustomAction;>;"
    :cond_3
    return-object v1
.end method

.method private varargs findCustomAction([Ljava/lang/String;)Landroid/media/session/PlaybackState$CustomAction;
    .locals 8
    .param p1, "keyWords"    # [Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v0

    .line 257
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/PlaybackState$CustomAction;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/PlaybackState$CustomAction;

    .line 258
    .local v3, "action":Landroid/media/session/PlaybackState$CustomAction;
    invoke-virtual {v3}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, "actionString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 260
    const-string v5, "MCService-SessionMediaController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findCustomAction actionString:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 262
    .local v5, "support":Z
    if-eqz v5, :cond_0

    .line 263
    return-object v3

    .line 268
    .end local v3    # "action":Landroid/media/session/PlaybackState$CustomAction;
    .end local v4    # "actionString":Ljava/lang/String;
    .end local v5    # "support":Z
    :cond_1
    goto :goto_0

    .line 269
    :cond_2
    return-object v1

    .line 271
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/PlaybackState$CustomAction;>;"
    :cond_3
    return-object v1
.end method

.method private findCustomActionRegex(Ljava/lang/String;)Landroid/media/session/PlaybackState$CustomAction;
    .locals 8
    .param p1, "keyword"    # Ljava/lang/String;

    .line 213
    const-string v0, "MCService-SessionMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findCustomActionRegex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v0

    .line 216
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/PlaybackState$CustomAction;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/PlaybackState$CustomAction;

    .line 217
    .local v3, "action":Landroid/media/session/PlaybackState$CustomAction;
    invoke-virtual {v3}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "actionString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 219
    const-string v5, "MCService-SessionMediaController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findCustomActionRegex actionString:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 221
    .local v5, "support":Z
    if-eqz v5, :cond_0

    .line 222
    return-object v3

    .line 227
    .end local v3    # "action":Landroid/media/session/PlaybackState$CustomAction;
    .end local v4    # "actionString":Ljava/lang/String;
    .end local v5    # "support":Z
    :cond_1
    goto :goto_0

    .line 228
    :cond_2
    return-object v1

    .line 230
    .end local v0    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/PlaybackState$CustomAction;>;"
    :cond_3
    return-object v1
.end method

.method private forward()Z
    .locals 5

    .line 801
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 802
    const-string v0, "seek-forward"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->findCustomAction(Ljava/lang/String;)Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v0

    .line 803
    .local v0, "forwardAction":Landroid/media/session/PlaybackState$CustomAction;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 804
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->sendCustomActionToClient(Landroid/media/session/PlaybackState$CustomAction;)V

    .line 805
    return v1

    .line 806
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    const-wide/16 v3, 0x40

    invoke-direct {p0, v2, v3, v4}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isActionSupport(Landroid/media/session/PlaybackState;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 807
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    .line 808
    .local v2, "transportControls":Landroid/media/session/MediaController$TransportControls;
    if-eqz v2, :cond_1

    .line 809
    invoke-virtual {v2}, Landroid/media/session/MediaController$TransportControls;->fastForward()V

    .line 810
    return v1

    .line 814
    .end local v0    # "forwardAction":Landroid/media/session/PlaybackState$CustomAction;
    .end local v2    # "transportControls":Landroid/media/session/MediaController$TransportControls;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getDuration()J
    .locals 2

    .line 604
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isNeedPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 609
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getPosition(J)J
    .locals 8
    .param p1, "duration"    # J

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 614
    return-wide v1

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 617
    .local v0, "state":Landroid/media/session/PlaybackState;
    if-nez v0, :cond_1

    .line 618
    return-wide v1

    .line 620
    :cond_1
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 621
    return-wide v3

    .line 623
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 624
    .local v1, "timeDiff":J
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v3

    .line 625
    .local v3, "speed":F
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 626
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 628
    :cond_3
    const/4 v3, 0x0

    .line 630
    :cond_4
    long-to-float v4, v1

    mul-float/2addr v4, v3

    float-to-long v4, v4

    .line 631
    .local v4, "posDiff":J
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    return-wide v6
.end method

.method private getTargetMediaController()Landroid/media/session/MediaController$TransportControls;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    return-object v0

    .line 656
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isActionSupport(Landroid/media/session/PlaybackState;J)Z
    .locals 4
    .param p1, "state"    # Landroid/media/session/PlaybackState;
    .param p2, "action"    # J

    .line 874
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 875
    const-string v1, "MCService-SessionMediaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current playbackState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " & request action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v1

    and-long/2addr v1, p2

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 878
    :cond_1
    return v0
.end method

.method private isNeedPosition()Z
    .locals 3

    .line 790
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getSource()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 793
    :cond_1
    return v1
.end method

.method private isPlay()Z
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isPlayStatus(Landroid/media/session/MediaController;)Z

    move-result v0

    return v0
.end method

.method private isPlayStatus(Landroid/media/session/MediaController;)Z
    .locals 3
    .param p1, "mediaController"    # Landroid/media/session/MediaController;

    .line 472
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    const-string v0, "MCService-SessionMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlayStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isPlaybackPlaying(I)Z

    move-result v0

    return v0

    .line 476
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPlaybackPlaying(I)Z
    .locals 1
    .param p1, "state"    # I

    .line 506
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isPlayingStatus(Landroid/media/session/MediaController;)Z
    .locals 3
    .param p1, "mediaController"    # Landroid/media/session/MediaController;

    .line 480
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 481
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 483
    :cond_1
    return v0
.end method

.method private isUseMediaButtonControl(Z)Z
    .locals 1
    .param p1, "isKeyEvent"    # Z

    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method private isXpSession(Landroid/media/session/MediaController;)Z
    .locals 3
    .param p1, "mediaController"    # Landroid/media/session/MediaController;

    .line 587
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 588
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "sessionPkgName":Ljava/lang/String;
    const-string v2, "com.xiaopeng.musicradio"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.android.bluetooth"

    .line 590
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 589
    :goto_1
    return v0

    .line 592
    .end local v1    # "sessionPkgName":Ljava/lang/String;
    :cond_2
    return v0
.end method

.method static synthetic lambda$sendKeyEvent$0(I)V
    .locals 1
    .param p0, "KeyCode"    # I

    .line 512
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 513
    .local v0, "inst":Landroid/app/Instrumentation;
    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .end local v0    # "inst":Landroid/app/Instrumentation;
    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 517
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private loadLyricInfo(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 2
    .param p1, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 761
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isXpSession:Z

    if-eqz v0, :cond_0

    .line 762
    return-void

    .line 764
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mLyricInfo:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    if-eqz v0, :cond_1

    .line 765
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mLyricInfo:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->getSongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mLyricInfo:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyClientLyric(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 767
    return-void

    .line 769
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;-><init>()V

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyClientLyric(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 770
    sget-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->Load_Media_Lyric:Z

    if-eqz v0, :cond_2

    .line 771
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->instance()Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mLoadCallback:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->loadLyric(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;)V

    .line 773
    :cond_2
    return-void
.end method

.method private mediaLaunchPolicyIntercepted(I)Z
    .locals 6
    .param p1, "cmd"    # I

    .line 343
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->isNeedCheckMediaProcess()Z

    move-result v0

    .line 344
    .local v0, "isNeedCheckProcess":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 345
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->isProcessExist(Ljava/lang/String;)Z

    move-result v2

    .line 346
    .local v2, "processExist":Z
    const-string v3, "MCService-SessionMediaController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "process:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " processExist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    if-nez v2, :cond_0

    .line 348
    sget v3, Lcom/xiaopeng/xuiservice/mediacenter/Config;->MediaLaunchPolicy:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 350
    :pswitch_0
    iget v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mDisplayId:I

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->enterApp(I)V

    .line 351
    goto :goto_0

    .line 354
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->controlSessionByXUIBroadcast(I)V

    .line 359
    :cond_0
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->setCheckMediaProcess(Z)V

    .line 360
    const/4 v1, 0x1

    return v1

    .line 362
    .end local v2    # "processExist":Z
    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private next(Z)Z
    .locals 4
    .param p1, "isKeyEvent"    # Z

    .line 428
    const-string v0, "MCService-SessionMediaController"

    const-string v1, "next"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isUseMediaButtonControl(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 430
    const/16 v0, 0x57

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->sendKeyEvent(I)V

    .line 431
    return v1

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    const-wide/16 v2, 0x20

    invoke-direct {p0, v0, v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isActionSupport(Landroid/media/session/PlaybackState;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    .line 435
    const-string v0, "MCService-SessionMediaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "next getTargetMediaController:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    return v1

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0076

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mDisplayId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;III)V

    .line 440
    return v3
.end method

.method private notifyClientLyric(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 913
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mLyricInfo:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 914
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;->onLyricUpdated(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 917
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->refreshMediaStyle(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 918
    return-void
.end method

.method private notifyClientLyric(Ljava/lang/String;)V
    .locals 4
    .param p1, "lyric"    # Ljava/lang/String;

    .line 921
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;-><init>()V

    .line 922
    .local v0, "lyricInfo":Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 924
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 925
    .local v1, "lyricObject":Lorg/json/JSONObject;
    const-string v2, "songId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setSongId(Ljava/lang/String;)V

    .line 926
    const-string v2, "songName"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setSongName(Ljava/lang/String;)V

    .line 927
    const-string v2, "artistName"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setArtistName(Ljava/lang/String;)V

    .line 928
    const-string v2, "albumName"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setAlbumName(Ljava/lang/String;)V

    .line 929
    const-string v2, "lyricType"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setLyricType(Ljava/lang/String;)V

    .line 930
    const-string v2, "lyricContent"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->setLyricContent(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "lyricObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 934
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 931
    :catch_0
    move-exception v1

    .line 932
    .local v1, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 934
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyClientLyric(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 935
    goto :goto_2

    .line 934
    :goto_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyClientLyric(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    throw v1

    .line 937
    :cond_0
    :goto_2
    return-void
.end method

.method private notifyListenerMediaInfo(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 1
    .param p1, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 635
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 636
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;->onMediaInfoChanged(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 639
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->loadLyricInfo(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 640
    return-void
.end method

.method private notifyListenerStatus()V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPlayStatus:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;->onPlayStatusChanged(I)V

    .line 497
    :cond_0
    return-void
.end method

.method private notifyMediaMetaData(Landroid/media/MediaMetadata;Ljava/lang/String;)V
    .locals 20
    .param p1, "mediaMetadata"    # Landroid/media/MediaMetadata;
    .param p2, "pkgName"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 664
    move-object/from16 v2, p2

    if-eqz v1, :cond_9

    .line 665
    new-instance v3, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-direct {v3}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;-><init>()V

    .line 666
    .local v3, "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setPackageName(Ljava/lang/String;)V

    .line 667
    const-string v4, "com.xiaopeng.musicradio"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 668
    invoke-virtual {v3, v5}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setXpMusic(Z)V

    .line 670
    :cond_0
    const-string v4, "android.media.metadata.TITLE"

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 671
    .local v4, "title":Ljava/lang/String;
    const-string v6, "android.media.metadata.ARTIST"

    invoke-virtual {v1, v6}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 672
    .local v6, "artist":Ljava/lang/String;
    const-string v7, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v1, v7}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 673
    .local v7, "displayIcon":Landroid/graphics/Bitmap;
    const-string v8, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {v1, v8}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 674
    .local v8, "artUri":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 675
    const-string v9, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v1, v9}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 677
    :cond_1
    const-string v9, "playMode"

    invoke-virtual {v1, v9}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 678
    .local v9, "playMode":Ljava/lang/String;
    const-string v10, "playList"

    invoke-virtual {v1, v10}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 679
    .local v10, "listInfo":Ljava/lang/String;
    const-string v11, "isLive"

    invoke-virtual {v1, v11}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 680
    .local v11, "isLive":Ljava/lang/String;
    const-string v12, "isDefaultContent"

    invoke-virtual {v1, v12}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 681
    .local v12, "isDefaultContent":Ljava/lang/String;
    const-string v13, "playSource"

    invoke-virtual {v1, v13}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    long-to-int v13, v13

    .line 682
    .local v13, "source":I
    const-string v14, "startPosition"

    invoke-virtual {v1, v14}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    long-to-int v14, v14

    .line 683
    .local v14, "startPosition":I
    const-string v15, "com.android.bluetooth"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 684
    invoke-virtual {v3, v5}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setXpMusic(Z)V

    .line 685
    const/4 v13, 0x3

    .line 687
    :cond_2
    if-nez v7, :cond_3

    .line 688
    const-string v5, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v1, v5}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 690
    :cond_3
    if-nez v7, :cond_4

    .line 691
    const-string v5, "android.media.metadata.ART"

    invoke-virtual {v1, v5}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 693
    :cond_4
    if-nez v7, :cond_5

    if-eqz v8, :cond_5

    .line 694
    invoke-static {v8}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->getCacheUriBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 696
    :cond_5
    if-nez v7, :cond_8

    .line 697
    invoke-virtual {v3}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 698
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->getDefaultMediaIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 702
    .end local v7    # "displayIcon":Landroid/graphics/Bitmap;
    .local v5, "displayIcon":Landroid/graphics/Bitmap;
    :goto_0
    move-object v7, v5

    goto :goto_1

    .line 700
    .end local v5    # "displayIcon":Landroid/graphics/Bitmap;
    .restart local v7    # "displayIcon":Landroid/graphics/Bitmap;
    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->getAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 702
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 703
    const-string v5, "MCService-SessionMediaController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v7

    const-string v7, "artUri = "

    .end local v7    # "displayIcon":Landroid/graphics/Bitmap;
    .local v16, "displayIcon":Landroid/graphics/Bitmap;
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    new-instance v5, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2;

    invoke-direct {v5, v0, v3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    invoke-static {v8, v5}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->loadUriBitmap(Ljava/lang/String;Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$Callback;)V

    goto :goto_2

    .line 719
    .end local v16    # "displayIcon":Landroid/graphics/Bitmap;
    .restart local v7    # "displayIcon":Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v16, v7

    .end local v7    # "displayIcon":Landroid/graphics/Bitmap;
    .restart local v16    # "displayIcon":Landroid/graphics/Bitmap;
    :goto_2
    move-object/from16 v7, v16

    .end local v16    # "displayIcon":Landroid/graphics/Bitmap;
    .restart local v7    # "displayIcon":Landroid/graphics/Bitmap;
    :cond_8
    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setTitle(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v3, v6}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setArtist(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v3, v7}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setAlbumBitmap(Landroid/graphics/Bitmap;)V

    .line 722
    const-string v5, "playMode"

    invoke-virtual {v3, v5, v9}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v5, "playList"

    invoke-virtual {v3, v5, v10}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v5, "isLive"

    invoke-virtual {v3, v5, v11}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v5, "isDefaultContent"

    invoke-virtual {v3, v5, v12}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-virtual {v3, v13}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setSource(I)V

    .line 727
    const-string v5, "startPosition"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v5, v15}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v5, "android.media.metadata.DURATION"

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    invoke-virtual {v1, v5}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 729
    .end local v8    # "artUri":Ljava/lang/String;
    .local v7, "duration":J
    .local v17, "artUri":Ljava/lang/String;
    .local v18, "displayIcon":Landroid/graphics/Bitmap;
    const-string v5, "MCService-SessionMediaController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMediaMetaData title:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &artist:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &playMode:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " source:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &duration:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " &isLive:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &isDefaultContent:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &startPosition"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &listInfo:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-direct {v0, v3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyListenerMediaInfo(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 734
    const-string v2, "lyricInfo"

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 735
    .local v2, "lyric":Ljava/lang/String;
    invoke-direct {v0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyClientLyric(Ljava/lang/String;)V

    .line 736
    .end local v2    # "lyric":Ljava/lang/String;
    .end local v3    # "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .end local v4    # "title":Ljava/lang/String;
    .end local v6    # "artist":Ljava/lang/String;
    .end local v7    # "duration":J
    .end local v9    # "playMode":Ljava/lang/String;
    .end local v10    # "listInfo":Ljava/lang/String;
    .end local v11    # "isLive":Ljava/lang/String;
    .end local v12    # "isDefaultContent":Ljava/lang/String;
    .end local v13    # "source":I
    .end local v14    # "startPosition":I
    .end local v17    # "artUri":Ljava/lang/String;
    .end local v18    # "displayIcon":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 737
    :cond_9
    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->getDefaultMediaInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyListenerMediaInfo(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 738
    const-string v2, "MCService-SessionMediaController"

    const-string v3, "notifyMediaMetaData metaData null to get default"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :goto_3
    return-void
.end method

.method private notifyMediaMetaDataInner(Landroid/media/MediaMetadata;Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaMetadata"    # Landroid/media/MediaMetadata;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 660
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyMediaMetaData(Landroid/media/MediaMetadata;Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method private notifyPlayStatus(Z)V
    .locals 1
    .param p1, "play"    # Z

    .line 487
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 488
    :cond_0
    const/4 v0, 0x1

    .line 489
    .local v0, "playState":I
    :goto_0
    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPlayStatus:I

    .line 490
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyListenerStatus()V

    .line 491
    return-void
.end method

.method private notifyPositionChanged(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "duration"    # J

    .line 500
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;->onPositionChanged(JJ)V

    .line 503
    :cond_0
    return-void
.end method

.method private pause(Z)V
    .locals 2
    .param p1, "isKeyEvent"    # Z

    .line 404
    const-string v0, "MCService-SessionMediaController"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isUseMediaButtonControl(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const/16 v0, 0x55

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->sendKeyEvent(I)V

    goto :goto_0

    .line 408
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->getTargetMediaController()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    .line 409
    .local v0, "transportControls":Landroid/media/session/MediaController$TransportControls;
    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 413
    .end local v0    # "transportControls":Landroid/media/session/MediaController$TransportControls;
    :cond_1
    :goto_0
    return-void
.end method

.method private pausePositionUpdate()V
    .locals 2

    .line 797
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->updatePositionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 798
    return-void
.end method

.method private play(Z)V
    .locals 2
    .param p1, "isKeyEvent"    # Z

    .line 416
    const-string v0, "MCService-SessionMediaController"

    const-string v1, "play"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isUseMediaButtonControl(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const/16 v0, 0x55

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->sendKeyEvent(I)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->getTargetMediaController()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    .line 421
    .local v0, "transportControls":Landroid/media/session/MediaController$TransportControls;
    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 425
    .end local v0    # "transportControls":Landroid/media/session/MediaController$TransportControls;
    :cond_1
    :goto_0
    return-void
.end method

.method private previous(Z)Z
    .locals 4
    .param p1, "isKeyEvent"    # Z

    .line 448
    const-string v0, "MCService-SessionMediaController"

    const-string v1, "previous"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isUseMediaButtonControl(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 450
    const/16 v0, 0x58

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->sendKeyEvent(I)V

    .line 451
    return v1

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    const-wide/16 v2, 0x10

    invoke-direct {p0, v0, v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isActionSupport(Landroid/media/session/PlaybackState;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    .line 455
    const-string v0, "MCService-SessionMediaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previous getTargetMediaController:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return v1

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0077

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mDisplayId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;III)V

    .line 460
    return v3
.end method

.method private refreshMediaStyle(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 882
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isXpSession:Z

    if-eqz v0, :cond_0

    .line 883
    return-void

    .line 885
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 886
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->getSongName()Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, "songName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 888
    .local v1, "artistName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "style"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 889
    .local v2, "styleName":Ljava/lang/String;
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/mediacenter/utils/StyleMapUtil;->getMediaStyleByName(Ljava/lang/String;)I

    move-result v3

    .line 890
    .local v3, "styleType":I
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 891
    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 892
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setStyle(I)V

    .line 895
    .end local v0    # "songName":Ljava/lang/String;
    .end local v1    # "artistName":Ljava/lang/String;
    .end local v2    # "styleName":Ljava/lang/String;
    .end local v3    # "styleType":I
    :cond_1
    return-void
.end method

.method private refreshPosition()V
    .locals 12

    .line 776
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->pausePositionUpdate()V

    .line 777
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->getDuration()J

    move-result-wide v0

    .line 778
    .local v0, "duration":J
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->getPosition(J)J

    move-result-wide v2

    .line 779
    .local v2, "position":J
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPositions:[J

    const-wide/16 v5, 0x3e7

    add-long v7, v2, v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    const/4 v11, 0x0

    aput-wide v7, v4, v11

    .line 780
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPositions:[J

    add-long/2addr v5, v0

    div-long/2addr v5, v9

    const/4 v7, 0x1

    aput-wide v5, v4, v7

    .line 781
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPositions:[J

    aget-wide v4, v4, v11

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPositions:[J

    aget-wide v6, v6, v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyPositionChanged(JJ)V

    .line 782
    return-void
.end method

.method private rewind()Z
    .locals 5

    .line 818
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 819
    const-string v0, "seek-backward"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->findCustomAction(Ljava/lang/String;)Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v0

    .line 820
    .local v0, "forwardAction":Landroid/media/session/PlaybackState$CustomAction;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 821
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->sendCustomActionToClient(Landroid/media/session/PlaybackState$CustomAction;)V

    .line 822
    return v1

    .line 823
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    const-wide/16 v3, 0x8

    invoke-direct {p0, v2, v3, v4}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isActionSupport(Landroid/media/session/PlaybackState;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 824
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    .line 825
    .local v2, "transportControls":Landroid/media/session/MediaController$TransportControls;
    if-eqz v2, :cond_1

    .line 826
    const-string v3, "MCService-SessionMediaController"

    const-string v4, "transportControls rewind"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-virtual {v2}, Landroid/media/session/MediaController$TransportControls;->rewind()V

    .line 828
    return v1

    .line 832
    .end local v0    # "forwardAction":Landroid/media/session/PlaybackState$CustomAction;
    .end local v2    # "transportControls":Landroid/media/session/MediaController$TransportControls;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z
    .locals 1
    .param p1, "a"    # Landroid/media/session/MediaController;
    .param p2, "b"    # Landroid/media/session/MediaController;

    .line 751
    if-ne p1, p2, :cond_0

    .line 752
    const/4 v0, 0x1

    return v0

    .line 754
    :cond_0
    if-nez p1, :cond_1

    .line 755
    const/4 v0, 0x0

    return v0

    .line 757
    :cond_1
    invoke-virtual {p1, p2}, Landroid/media/session/MediaController;->controlsSameSession(Landroid/media/session/MediaController;)Z

    move-result v0

    return v0
.end method

.method private sendCustomActionToClient(Landroid/media/session/PlaybackState$CustomAction;)V
    .locals 4
    .param p1, "action"    # Landroid/media/session/PlaybackState$CustomAction;

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    .line 335
    .local v0, "transportControls":Landroid/media/session/MediaController$TransportControls;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 336
    const-string v1, "MCService-SessionMediaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCustomActionToClient action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p1}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 340
    .end local v0    # "transportControls":Landroid/media/session/MediaController$TransportControls;
    :cond_0
    return-void
.end method

.method private sendCustomActionToClient(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    .line 326
    .local v0, "transportControls":Landroid/media/session/MediaController$TransportControls;
    if-eqz v0, :cond_0

    .line 327
    const-string v1, "com.xiaopeng.action_media_session_custom"

    invoke-virtual {v0, v1, p1}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 330
    .end local v0    # "transportControls":Landroid/media/session/MediaController$TransportControls;
    :cond_0
    return-void
.end method

.method private static sendKeyEvent(I)V
    .locals 1
    .param p0, "KeyCode"    # I

    .line 510
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/-$$Lambda$SessionMediaController$xAirpsSD6c9ai80iNpDTE782lKw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/-$$Lambda$SessionMediaController$xAirpsSD6c9ai80iNpDTE782lKw;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 518
    return-void
.end method

.method private setPlayMode(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 302
    const-string v0, "TextValue"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "mode":Ljava/lang/String;
    const-string v1, "MCService-SessionMediaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v1, "random"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 305
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->setPlayModeShuffle(Z)Z

    move-result v1

    return v1

    .line 306
    :cond_0
    const-string v1, "order"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->setRepeatMode(I)Z

    move-result v1

    return v1

    .line 308
    :cond_1
    const-string v1, "single"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->setRepeatMode(I)Z

    move-result v1

    return v1

    .line 311
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private setPlayModeShuffle(Z)Z
    .locals 8
    .param p1, "enable"    # Z

    .line 177
    if-eqz p1, :cond_0

    const-string v0, "shuffle"

    goto :goto_0

    :cond_0
    const-string v0, "disable-shuffle"

    .line 178
    .local v0, "keyWord":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->findCustomAction(Ljava/lang/String;)Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v1

    .line 179
    .local v1, "action":Landroid/media/session/PlaybackState$CustomAction;
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 180
    const-string v3, "MCService-SessionMediaController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPlayModeShuffle enable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->sendCustomActionToClient(Landroid/media/session/PlaybackState$CustomAction;)V

    .line 182
    return v2

    .line 183
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    const-wide/32 v4, 0x200000

    invoke-direct {p0, v3, v4, v5}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isActionSupport(Landroid/media/session/PlaybackState;J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v3

    .line 185
    .local v3, "transportControls":Landroid/media/session/MediaController$TransportControls;
    if-eqz v3, :cond_2

    .line 186
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "MCService-SessionMediaController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transportControls setPlayModeShuffle enable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v5, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    const-string v5, "android.support.v4.media.session.action.SET_SHUFFLE_MODE"

    invoke-virtual {v3, v5, v4}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 190
    return v2

    .line 193
    .end local v3    # "transportControls":Landroid/media/session/MediaController$TransportControls;
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private setRepeatMode(I)Z
    .locals 5
    .param p1, "repeatMode"    # I

    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    const-wide/32 v3, 0x40000

    invoke-direct {p0, v1, v3, v4}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isActionSupport(Landroid/media/session/PlaybackState;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    return v2

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 204
    const-string v1, "MCService-SessionMediaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlayRepeatMode repeatMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    const-string v2, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    invoke-virtual {v1, v2, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 206
    const/4 v1, 0x1

    return v1

    .line 209
    :cond_1
    return v2
.end method

.method private setSpeed(F)Z
    .locals 6
    .param p1, "speed"    # F

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->KEY_CUSTOM_SPEED:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "customActionName":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->KEY_CUSTOM_SPEED:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->findCustomActionRegex(Ljava/lang/String;)Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v3

    .line 279
    .local v3, "action":Landroid/media/session/PlaybackState$CustomAction;
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 280
    const-string v1, "MCService-SessionMediaController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSpeed customAction:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 282
    return v2

    .line 284
    :cond_0
    return v1

    .line 287
    .end local v0    # "customActionName":Ljava/lang/String;
    .end local v3    # "action":Landroid/media/session/PlaybackState$CustomAction;
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    .line 288
    .local v0, "transportControls":Landroid/media/session/MediaController$TransportControls;
    if-eqz v0, :cond_2

    .line 289
    const-string v1, "MCService-SessionMediaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPlaybackSpeed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return v2

    .line 293
    :cond_2
    return v1
.end method

.method private startOrPausePositionCountDown(Z)V
    .locals 0
    .param p1, "playing"    # Z

    .line 596
    if-eqz p1, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->startPositionUpdate()V

    goto :goto_0

    .line 599
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->pausePositionUpdate()V

    .line 601
    :goto_0
    return-void
.end method

.method private startPositionUpdate()V
    .locals 2

    .line 785
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->updatePositionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 786
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->updatePositionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 787
    return-void
.end method

.method private unFavorite()Z
    .locals 6

    .line 855
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 856
    const-string v0, "unlike"

    const-string v2, "unheart"

    const-string v3, "unliketrack"

    const-string v4, "unfollow"

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->findCustomAction([Ljava/lang/String;)Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v0

    .line 857
    .local v0, "unFavoriteAction":Landroid/media/session/PlaybackState$CustomAction;
    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 858
    const-string v1, "MCService-SessionMediaController"

    const-string v3, "unFavorite action find to do"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->sendCustomActionToClient(Landroid/media/session/PlaybackState$CustomAction;)V

    .line 860
    return v2

    .line 861
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    const-wide/16 v4, 0x80

    invoke-direct {p0, v3, v4, v5}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isActionSupport(Landroid/media/session/PlaybackState;J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 862
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v3

    .line 863
    .local v3, "transportControls":Landroid/media/session/MediaController$TransportControls;
    if-eqz v3, :cond_1

    .line 864
    const-string v4, "MCService-SessionMediaController"

    const-string v5, "transportControls newHeartRating false"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-static {v1}, Landroid/media/Rating;->newHeartRating(Z)Landroid/media/Rating;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V

    .line 866
    return v2

    .line 870
    .end local v0    # "unFavoriteAction":Landroid/media/session/PlaybackState$CustomAction;
    .end local v3    # "transportControls":Landroid/media/session/MediaController$TransportControls;
    :cond_1
    return v1
.end method

.method private unsetPlayMode(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 315
    const-string v0, "TextValue"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "mode":Ljava/lang/String;
    const-string v1, "MCService-SessionMediaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsetPlayMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "random"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 318
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->setPlayModeShuffle(Z)Z

    move-result v1

    return v1

    .line 320
    :cond_0
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->setRepeatMode(I)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getCurrentPlayState()Landroid/media/session/PlaybackState;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getLyricInfo()Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mLyricInfo:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    return-object v0
.end method

.method public getMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    return-object v0
.end method

.method public getMediaStyle()I
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getStyle()I

    move-result v0

    return v0
.end method

.method public getPlayStatus()I
    .locals 1

    .line 377
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPlayStatus:I

    return v0
.end method

.method public getPositions()[J
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPositions:[J

    return-object v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 468
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public playbackControl(III)Z
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "cmd"    # I
    .param p3, "param"    # I

    .line 88
    const-string v0, "MCService-SessionMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playbackControl cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 90
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->isDefaultContent(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/16 p2, 0xb

    .line 93
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->playbackControl(III)Z

    move-result v0

    .line 94
    .local v0, "processed":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 95
    return v1

    .line 97
    :cond_1
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mediaLaunchPolicyIntercepted(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    return v1

    .line 100
    :cond_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p3, v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v3

    .line 101
    .local v2, "isKeyControl":Z
    :goto_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 133
    :pswitch_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isPlay()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 134
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->pause(Z)V

    goto :goto_1

    .line 130
    :pswitch_2
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->unFavorite()Z

    move-result v1

    return v1

    .line 121
    :pswitch_3
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->forward()Z

    move-result v1

    return v1

    .line 124
    :pswitch_4
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->rewind()Z

    move-result v1

    return v1

    .line 127
    :pswitch_5
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->favorite()Z

    move-result v1

    return v1

    .line 106
    :pswitch_6
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->previous(Z)Z

    move-result v1

    return v1

    .line 103
    :pswitch_7
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->next(Z)Z

    move-result v1

    return v1

    .line 109
    :pswitch_8
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->play(Z)V

    .line 110
    goto :goto_1

    .line 113
    :pswitch_9
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isPlay()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 114
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->pause(Z)V

    goto :goto_1

    .line 116
    :cond_4
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->play(Z)V

    .line 118
    nop

    .line 141
    :cond_5
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendCustomAction(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "cmd"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 146
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    const-string v0, "playSource"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 167
    .local v0, "targetSource":I
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->switchSource(I)V

    .line 173
    .end local v0    # "targetSource":I
    :goto_0
    return v1

    .line 157
    :cond_1
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->unsetPlayMode(Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 154
    :cond_2
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->setPlayMode(Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 148
    :cond_3
    const-string v0, "LongValue"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 149
    .local v0, "setTime":J
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    .line 150
    .local v2, "milliseconds":J
    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->seekTo(J)V

    .line 151
    const/4 v4, 0x1

    return v4
.end method

.method public setFavorite(ZLjava/lang/String;)V
    .locals 2
    .param p1, "favorite"    # Z
    .param p2, "id"    # Ljava/lang/String;

    .line 392
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->getTargetMediaController()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    .line 393
    .local v0, "transportControls":Landroid/media/session/MediaController$TransportControls;
    if-eqz v0, :cond_0

    .line 394
    nop

    .line 395
    invoke-static {p1}, Landroid/media/Rating;->newUnratedRating(I)Landroid/media/Rating;

    move-result-object v1

    .line 394
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V

    .line 397
    :cond_0
    return-void
.end method

.method public setPlayInfoListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    .line 80
    return-void
.end method

.method public setSessionStatusListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionStatusListener;

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mSessionStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionStatusListener;

    .line 84
    return-void
.end method

.method public switchSource(I)V
    .locals 4
    .param p1, "source"    # I

    .line 644
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 646
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "playSource"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 647
    const-string v1, "MCService-SessionMediaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchSource targetSource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    const-string v2, "com.xiaopeng.custom_switch_play_source"

    invoke-virtual {v1, v2, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 650
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public updateMediaController(Landroid/media/session/MediaController;)V
    .locals 4
    .param p1, "mediaController"    # Landroid/media/session/MediaController;

    .line 558
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->adaptationXpMusic(Landroid/media/session/MediaController;)V

    .line 559
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyMediaMetaDataInner(Landroid/media/MediaMetadata;Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isPlayStatus(Landroid/media/session/MediaController;)Z

    move-result v0

    .line 561
    .local v0, "isPlay":Z
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyPlayStatus(Z)V

    .line 562
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->refreshPosition()V

    .line 563
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->isPlayingStatus(Landroid/media/session/MediaController;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->startOrPausePositionCountDown(Z)V

    .line 564
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, v1, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 566
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->clearCurrentMediaNotificationSession()V

    .line 567
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 568
    const-string v1, "MCService-SessionMediaController"

    const-string v2, "updateMediaController registerCallback"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->mMediaListener:Landroid/media/session/MediaController$Callback;

    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 571
    :cond_0
    return-void
.end method
