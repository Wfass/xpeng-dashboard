.class public Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;
.super Ljava/lang/Object;
.source "LyricLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;
    }
.end annotation


# static fields
.field private static final MAX_CACHE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "LyricLoader"

.field private static mInstance:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;

.field private static mRequestUri:Ljava/lang/String;


# instance fields
.field private mCacheLyricList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/Constants$LyricRequest;->getMusicMatchUri()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->mRequestUri:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->mCacheLyricList:Ljava/util/List;

    .line 26
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->init(Landroid/app/Application;)V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .param p2, "x2"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->isCorrectLyric(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->cacheLyricInfo(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    return-void
.end method

.method private cacheLyricInfo(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 2
    .param p1, "lyricInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->mCacheLyricList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->mCacheLyricList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->mCacheLyricList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 89
    :cond_0
    return-void
.end method

.method private getCachedLyric(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    .locals 5
    .param p1, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->mCacheLyricList:Ljava/util/List;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->mCacheLyricList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->mCacheLyricList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 95
    .local v2, "info":Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->getSongName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    monitor-exit v0

    return-object v2

    .line 99
    .end local v2    # "info":Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    :cond_0
    goto :goto_0

    .line 101
    :cond_1
    monitor-exit v0

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static instance()Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;
    .locals 2

    .line 30
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;

    return-object v0
.end method

.method private isCorrectLyric(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)Z
    .locals 2
    .param p1, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .param p2, "lyricInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 77
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->getSongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0
.end method


# virtual methods
.method public loadLyric(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;)V
    .locals 4
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;

    .line 41
    const-string v0, "LyricLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLyric with mediaInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->getCachedLyric(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    move-result-object v0

    .line 44
    .local v0, "cachedInfo":Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    if-eqz v0, :cond_0

    .line 45
    if-eqz p2, :cond_1

    .line 46
    invoke-interface {p2, v0}, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;->onLoadSuccess(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getInstance()Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    move-result-object v1

    .line 50
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->mRequestUri:Ljava/lang/String;

    .line 51
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->get(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    .line 52
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v1

    const-string v2, "songName"

    .line 53
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->params(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v1

    const-string v2, "artistName"

    .line 54
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->params(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 55
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 74
    .end local v0    # "cachedInfo":Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    :cond_1
    :goto_0
    return-void
.end method
