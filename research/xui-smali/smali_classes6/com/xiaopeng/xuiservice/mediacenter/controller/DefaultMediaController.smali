.class public Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;
.super Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;
.source "DefaultMediaController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultMediaController"


# instance fields
.field private mDefaultMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

.field private mDefaultPosition:[J

.field private mLocaleEventListener:Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;

.field private mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

.field private mThemeEventListener:Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;-><init>()V

    .line 80
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->mLocaleEventListener:Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;

    .line 88
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->mThemeEventListener:Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->init()V

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->initDefaultInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->onInfoChanged()V

    return-void
.end method

.method private addLocalEventListener()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->getInstance()Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->mLocaleEventListener:Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->registerListener(Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;)V

    .line 40
    return-void
.end method

.method private addThemeEventListener()V
    .locals 2

    .line 43
    invoke-static {}, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->get()Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->mThemeEventListener:Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->register(Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;)V

    .line 44
    return-void
.end method

.method private init()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->addLocalEventListener()V

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->addThemeEventListener()V

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->initDefaultInfo()V

    .line 28
    return-void
.end method

.method private initDefaultInfo()V
    .locals 3

    .line 31
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->getDefaultMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->mDefaultMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->mDefaultMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    const-string v1, "isDefault"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->mDefaultPosition:[J

    .line 36
    return-void

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private onInfoChanged()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->mDefaultMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;->onMediaInfoChanged(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public getLyricInfo()Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    .locals 1

    .line 67
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;-><init>()V

    return-object v0
.end method

.method public getMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->mDefaultMediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    return-object v0
.end method

.method public getPlayStatus()I
    .locals 1

    .line 72
    const/4 v0, 0x2

    return v0
.end method

.method public getPositions()[J
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->mDefaultPosition:[J

    return-object v0
.end method

.method public playbackControl(III)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "cmd"    # I
    .param p3, "param"    # I

    .line 52
    const-string v0, "DefaultMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playbackControl displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/16 v0, 0x12

    if-eq p2, v0, :cond_1

    const/16 v0, 0x13

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/IPCMediaController;->playbackControl(III)Z

    move-result v0

    return v0

    .line 55
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPlayInfoListener(Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/DefaultMediaController;->mPlayInfoListener:Lcom/xiaopeng/xuiservice/mediacenter/controller/PlayInfoListener;

    .line 48
    return-void
.end method
