.class public Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;
.super Ljava/lang/Object;
.source "KaraokeManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KaraokeController"

.field private static mInstance:Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;


# instance fields
.field private mActivityChangedListener:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ActivityChangedListener;

.field private mHandlerHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/IKaraokeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mLastKaraokePackage:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mLastKaraokePackage:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mActivityChangedListener:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ActivityChangedListener;

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->initHandlerMap()V

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->registerActivityChangedListener()V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mHandlerHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mLastKaraokePackage:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;
    .locals 2

    .line 33
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;

    return-object v0
.end method

.method private initHandlerMap()V
    .locals 3

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mHandlerHashMap:Ljava/util/HashMap;

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mHandlerHashMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.wecar.karaoke"

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/QMKaraokeHandler;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/QMKaraokeHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mHandlerHashMap:Ljava/util/HashMap;

    const-string v1, "com.changba.sd"

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/CBKaraokeHandler;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/CBKaraokeHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mHandlerHashMap:Ljava/util/HashMap;

    const-string v1, "com.thunder.carplay"

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method private registerActivityChangedListener()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mActivityChangedListener:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ActivityChangedListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->registerActivityChangedListener(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ActivityChangedListener;)V

    .line 45
    return-void
.end method

.method private searchCurrentSong(ILjava/lang/String;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    .line 76
    .local v0, "info":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->searchSong(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public findTargetPackage(I)Ljava/lang/String;
    .locals 4
    .param p1, "displayId"    # I

    .line 82
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstalledAppList(I)Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "installPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mLastKaraokePackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mLastKaraokePackage:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mLastKaraokePackage:Ljava/lang/String;

    return-object v1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    .local v2, "pkgName":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    return-object v2

    .line 91
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 92
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 93
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 95
    :cond_3
    const-string v1, ""

    return-object v1
.end method

.method public isKaraokeApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstalledAppList(I)Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, "installPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isSupportSpeech(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public searchSong(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "artist"    # Ljava/lang/String;
    .param p4, "song"    # Ljava/lang/String;

    .line 109
    const-string v0, "KaraokeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchSong pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &artist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &song:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mLastKaraokePackage:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/IKaraokeHandler;

    .line 112
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/IKaraokeHandler;
    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p1, p3, p4}, Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/IKaraokeHandler;->searchSong(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public startKaraokeCurrentMedia(I)I
    .locals 2
    .param p1, "displayId"    # I

    .line 66
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->findTargetPackage(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "targetPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, 0x4

    return v1

    .line 70
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->searchCurrentSong(ILjava/lang/String;)V

    .line 71
    const/4 v1, 0x1

    return v1
.end method
