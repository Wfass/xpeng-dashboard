.class public Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;
.super Ljava/lang/Object;
.source "MediaControllerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MCService-MediaControllerManager"

.field private static mInstance:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;


# instance fields
.field private mInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

.field private mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

.field private mSDPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

.field private mTargetChangedListener:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$TargetChangedListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mTargetChangedListener:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$TargetChangedListener;

    .line 241
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$3;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;[Landroid/media/session/MediaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;
    .param p1, "x1"    # [Landroid/media/session/MediaController;

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->onMediaControllerChanged([Landroid/media/session/MediaController;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;)Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;
    .locals 2

    .line 34
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

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
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;

    return-object v0
.end method

.method private initSDMediaControllers()V
    .locals 7

    .line 121
    invoke-static {}, Lcom/xiaopeng/screen/ScreenManagerFactory;->get()Lcom/xiaopeng/screen/ScreenManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/screen/ScreenManagerFactory;->getScreenDevices()Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, "screenDevices":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/screen/ScreenDevice;>;"
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/screen/ScreenDevice;

    .line 124
    .local v2, "device":Lcom/xiaopeng/screen/ScreenDevice;
    iget-object v3, v2, Lcom/xiaopeng/screen/ScreenDevice;->configuration:Lcom/xiaopeng/screen/ScreenItemConfiguration;

    iget v3, v3, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenId:I

    .line 125
    .local v3, "screenId":I
    invoke-static {}, Lcom/xiaopeng/screen/ScreenManagerFactory;->get()Lcom/xiaopeng/screen/ScreenManagerFactory;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaopeng/screen/ScreenManagerFactory;->hasScreen(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 127
    const-string v4, "MCService-MediaControllerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSDMediaControllers screenId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is invalid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    goto :goto_0

    .line 131
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 132
    goto :goto_0

    .line 135
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    new-instance v5, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    invoke-direct {v5, v3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;-><init>(I)V

    aput-object v5, v4, v3

    .line 136
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->setPlayInfoListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;)V

    .line 138
    .end local v2    # "device":Lcom/xiaopeng/screen/ScreenDevice;
    .end local v3    # "screenId":I
    :cond_2
    goto :goto_0

    .line 139
    :cond_3
    return-void
.end method

.method private isShowSeizeDialog(I)Z
    .locals 5
    .param p1, "displayId"    # I

    .line 224
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->hasSharedDisplayFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->Show_Seize_Dialog:Z

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    .line 226
    .local v0, "current":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    const/4 v2, 0x1

    rsub-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v3

    .line 227
    .local v3, "other":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->isDefaultMedia(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 228
    invoke-virtual {v3}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->isDefaultMedia(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 227
    move v1, v2

    goto :goto_0

    .line 228
    :cond_0
    nop

    .line 227
    :goto_0
    return v1

    .line 230
    .end local v0    # "current":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .end local v3    # "other":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    :cond_1
    return v1
.end method

.method private onMediaControllerChanged([Landroid/media/session/MediaController;)V
    .locals 5
    .param p1, "controllers"    # [Landroid/media/session/MediaController;

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 143
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    aget-object v1, v1, v0

    .line 148
    .local v1, "sdController":Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;
    if-eqz v1, :cond_1

    .line 149
    const-string v2, "MCService-MediaControllerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMediaControllerChanged displayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    aget-object v2, v2, v0

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->updateMediaController(Landroid/media/session/MediaController;)V

    .line 142
    .end local v1    # "sdController":Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_2
    :goto_1
    const-string v1, "MCService-MediaControllerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMediaControllerChanged outOfIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void

    .line 153
    .end local v0    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public getCurrentLyricInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    .locals 3
    .param p1, "displayId"    # I

    .line 79
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->getLyricInfo()Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    move-result-object v0

    return-object v0

    .line 80
    :cond_1
    :goto_0
    const-string v0, "MCService-MediaControllerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentLyricInfo outOfIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 4
    .param p1, "displayId"    # I

    .line 66
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    aget-object v0, v0, p1

    .line 71
    .local v0, "sdMediaController":Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->getMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v1

    return-object v1

    .line 74
    :cond_1
    const-string v1, "MCService-MediaControllerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentMediaInfo sdController null with screenId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->getDefaultMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v1

    return-object v1

    .line 67
    .end local v0    # "sdMediaController":Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;
    :cond_2
    :goto_0
    const-string v0, "MCService-MediaControllerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentMediaInfo outOfIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->getDefaultMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaStyle(I)I
    .locals 3
    .param p1, "displayId"    # I

    .line 113
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getStyle()I

    move-result v0

    return v0

    .line 114
    :cond_1
    :goto_0
    const-string v0, "MCService-MediaControllerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentMediaStyle outOfIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentPlayStatus(I)I
    .locals 3
    .param p1, "displayId"    # I

    .line 87
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->getPlayStatus()I

    move-result v0

    return v0

    .line 88
    :cond_1
    :goto_0
    const-string v0, "MCService-MediaControllerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPlayStatus outOfIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x2

    return v0
.end method

.method public getCurrentPlaybackState(I)Landroid/media/session/PlaybackState;
    .locals 3
    .param p1, "displayId"    # I

    .line 95
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0

    .line 96
    :cond_1
    :goto_0
    const-string v0, "MCService-MediaControllerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPlaybackState outOfIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPosition(I)[J
    .locals 3
    .param p1, "displayId"    # I

    .line 103
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->getPositions()[J

    move-result-object v0

    return-object v0

    .line 104
    :cond_1
    :goto_0
    const-string v0, "MCService-MediaControllerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPosition outOfIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public init()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->initSDMediaControllers()V

    .line 46
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mTargetChangedListener:Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$TargetChangedListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager;->registerTargetChangedListener(Lcom/xiaopeng/xuiservice/mediacenter/session/XuiMediaSessionManager$TargetChangedListener;)V

    .line 47
    return-void
.end method

.method public playbackControl(III)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "cmd"    # I
    .param p3, "params"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->isShowSeizeDialog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_media_no_seize_dialog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 158
    .local v0, "noShow":Z
    if-eqz v0, :cond_0

    .line 159
    const/16 v1, 0xb

    invoke-virtual {p0, p1, v1, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->playbackControlInner(III)Z

    goto :goto_0

    .line 161
    :cond_0
    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;II)V

    invoke-static {p1, v1}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->showSeizeDialog(ILcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$OnDialogConfirm;)V

    .line 173
    .end local v0    # "noShow":Z
    :goto_0
    goto :goto_1

    .line 174
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->playbackControlInner(III)Z

    .line 176
    :goto_1
    return-void
.end method

.method public playbackControlInner(III)Z
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "cmd"    # I
    .param p3, "params"    # I

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->playbackController(II)Z

    move-result v0

    return v0
.end method

.method public playbackControlWithBundle(IILandroid/os/Bundle;)I
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "cmd"    # I
    .param p3, "params"    # Landroid/os/Bundle;

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->sendCustomAction(ILandroid/os/Bundle;)Z

    move-result v0

    .line 180
    .local v0, "success":Z
    return v0
.end method

.method public releaseStopAll()V
    .locals 2

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 211
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->releaseStopScreen(I)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public releaseStopScreen(I)V
    .locals 1
    .param p1, "screenId"    # I

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    aget-object v0, v0, p1

    .line 204
    .local v0, "sdMediaController":Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;
    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->releaseStop()V

    .line 207
    :cond_1
    return-void
.end method

.method public sendCustomAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "cmd"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->sendCustomAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setFavorite(IZLjava/lang/String;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "favorite"    # Z
    .param p3, "id"    # Ljava/lang/String;

    .line 58
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->setFavorite(ZLjava/lang/String;)V

    .line 63
    return-void

    .line 59
    :cond_1
    :goto_0
    const-string v0, "MCService-MediaControllerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFavorite outOfIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setPlayInfoListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/SDPlayInfoListener;

    .line 51
    return-void
.end method

.method public stopAllScreenMedia(ZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "stop"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 195
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->stopMedia(IZLjava/lang/String;Landroid/os/Bundle;)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public stopMedia(IZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "screenId"    # I
    .param p2, "stop"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 185
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    aget-object v0, v0, p1

    .line 188
    .local v0, "sdMediaController":Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;
    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->stopMedia(ZLjava/lang/String;Landroid/os/Bundle;)V

    .line 191
    :cond_1
    return-void
.end method

.method public switchSource(I)V
    .locals 2
    .param p1, "source"    # I

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/MediaControllerManager;->mSDMediaControllers:[Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SDMediaController;->switchSource(I)V

    .line 55
    return-void
.end method
