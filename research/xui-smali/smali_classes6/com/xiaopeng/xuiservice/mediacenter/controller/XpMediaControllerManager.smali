.class public Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;
.super Ljava/lang/Object;
.source "XpMediaControllerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XpMediaControllerManager"

.field private static mInstance:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;


# instance fields
.field private mDefaultLyric:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

.field private mLoadCallback:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;

.field private mLocaleEventListener:Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;

.field private mLyricInfo:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

.field private mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

.field private mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

.field private mPlayInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayStatus:I

.field private mPositions:[J

.field private mThemeEventListener:Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayInfoListeners:Ljava/util/List;

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayStatus:I

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPositions:[J

    .line 202
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mLoadCallback:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;

    .line 224
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mLocaleEventListener:Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;

    .line 232
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager$3;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mThemeEventListener:Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;

    .line 34
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mDefaultLyric:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mDefaultLyric:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mLyricInfo:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 36
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->getDefaultMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->registerUIEvent()V

    .line 38
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->notifyListenerLyric(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->notifyListenersMediaInfo(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;
    .locals 2

    .line 92
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    if-nez v0, :cond_1

    .line 93
    const-class v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    .line 97
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 99
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    return-object v0
.end method

.method private isLyricMatch(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)Z
    .locals 2
    .param p1, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .param p2, "lyricInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 120
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0
.end method

.method private isSameMediaInfo(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z
    .locals 2
    .param p1, "aMediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .param p2, "bMediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 115
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0
.end method

.method private loadLyricInfo(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 2
    .param p1, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 197
    sget-boolean v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->Load_Media_Lyric:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getSource()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 198
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->instance()Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mLoadCallback:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->loadLyric(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;)V

    .line 200
    :cond_0
    return-void
.end method

.method private notifyListenerLyric(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 188
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mLyricInfo:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayInfoListeners:Ljava/util/List;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayInfoListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    .line 191
    .local v2, "listener":Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;->onLyricUpdated(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 192
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;
    goto :goto_0

    .line 193
    :cond_0
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyListenersMediaInfo(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 3
    .param p1, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayInfoListeners:Ljava/util/List;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayInfoListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    .line 166
    .local v2, "listener":Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;->onMediaInfoChanged(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 167
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;
    goto :goto_0

    .line 168
    :cond_0
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyListenersPlayStatus(I)V
    .locals 3
    .param p1, "playStatus"    # I

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayInfoListeners:Ljava/util/List;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayInfoListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    .line 174
    .local v2, "listener":Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;->onPlayStatusChanged(I)V

    .line 175
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;
    goto :goto_0

    .line 176
    :cond_0
    monitor-exit v0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyListenersPosition(JJ)V
    .locals 3
    .param p1, "position"    # J
    .param p3, "duration"    # J

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayInfoListeners:Ljava/util/List;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayInfoListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    .line 182
    .local v2, "listener":Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;->onPositionChanged(JJ)V

    .line 183
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;
    goto :goto_0

    .line 184
    :cond_0
    monitor-exit v0

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerUIEvent()V
    .locals 2

    .line 215
    invoke-static {}, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->getInstance()Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mLocaleEventListener:Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->registerListener(Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;)V

    .line 216
    invoke-static {}, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->get()Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mThemeEventListener:Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->register(Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;)V

    .line 217
    return-void
.end method

.method private syncInfo(Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;->onMediaInfoChanged(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 158
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayStatus:I

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;->onPlayStatusChanged(I)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPositions:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPositions:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;->onPositionChanged(JJ)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mLyricInfo:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;->onLyricUpdated(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 161
    return-void
.end method

.method private unregisterUIEvent()V
    .locals 2

    .line 220
    invoke-static {}, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->getInstance()Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mLocaleEventListener:Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->unregisterListener(Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;)V

    .line 221
    invoke-static {}, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->get()Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mThemeEventListener:Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->unregister(Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;)V

    .line 222
    return-void
.end method


# virtual methods
.method public getLyricInfo()Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mLyricInfo:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    return-object v0
.end method

.method public getMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    return-object v0
.end method

.method public getPlayStatus()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayStatus:I

    return v0
.end method

.method public getPositions()[J
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPositions:[J

    return-object v0
.end method

.method public init(Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;)V
    .locals 0
    .param p1, "service"    # Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    .line 42
    return-void
.end method

.method public playbackControl(II)Z
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .line 45
    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 46
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->setFavorite(ZLjava/lang/String;)Z

    move-result v0

    return v0

    .line 47
    :cond_0
    const/16 v1, 0x10

    if-ne p1, v1, :cond_1

    .line 48
    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->setFavorite(ZLjava/lang/String;)Z

    move-result v0

    return v0

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->notifyPlayControlListener(II)V

    .line 52
    return v0
.end method

.method public registerListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayInfoListeners:Ljava/util/List;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayInfoListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayInfoListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->syncInfo(Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;)V

    .line 80
    :cond_0
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFavorite(ZLjava/lang/String;)Z
    .locals 3
    .param p1, "favorite"    # Z
    .param p2, "id"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 61
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getFavor()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 62
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isFavor()Z

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getId()Ljava/lang/String;

    move-result-object p2

    .line 69
    :cond_1
    const-string v0, "XpMediaControllerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFavorite favorite:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " &id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->notifySetFavoriteListeners(ZLjava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    return v0

    .line 63
    :cond_2
    :goto_0
    const-string v0, "XpMediaControllerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current favor status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getFavor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public switchSource(I)V
    .locals 1
    .param p1, "source"    # I

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mMediaCenterHalService:Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->notifySwitchSourceListener(I)V

    .line 57
    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayInfoListeners:Ljava/util/List;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayInfoListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayInfoListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public vendorUpdateLyric(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 137
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->notifyListenerLyric(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 138
    return-void
.end method

.method public vendorUpdateMediaInfo(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 3
    .param p1, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 103
    const-string v0, "XpMediaControllerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendorUpdateMediaInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->unregisterUIEvent()V

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 106
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getStyleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/utils/StyleMapUtil;->getMediaStyleByName(Ljava/lang/String;)I

    move-result v0

    .line 107
    .local v0, "style":I
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setStyle(I)V

    .line 108
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->notifyListenersMediaInfo(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 109
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mLyricInfo:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->isLyricMatch(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mDefaultLyric:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->notifyListenerLyric(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 112
    :cond_0
    return-void
.end method

.method public vendorUpdatePlayStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 132
    iput p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPlayStatus:I

    .line 133
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->notifyListenersPlayStatus(I)V

    .line 134
    return-void
.end method

.method public vendorUpdatePosition(JJ)V
    .locals 2
    .param p1, "position"    # J
    .param p3, "duration"    # J

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPositions:[J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->mPositions:[J

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->notifyListenersPosition(JJ)V

    .line 129
    return-void
.end method
