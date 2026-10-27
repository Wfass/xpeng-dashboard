.class public Lbdk;
.super Ljava/lang/Object;
.source "SearchAndHistoryModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbdk$a;
    }
.end annotation


# instance fields
.field private a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/lzy/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicSearchBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbdk;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lbdk;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lbdk;->e:Lcom/lzy/okgo/adapter/Call;

    .line 65
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lbdk;->a:Landroid/util/LruCache;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbdk;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lbdk$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lbdk;-><init>()V

    return-void
.end method

.method static synthetic a(Lbdk;Ljava/lang/String;)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lbdk;->b(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a()Lbdk;
    .locals 1

    .line 61
    sget-object v0, Lbdk$a;->a:Lbdk;

    return-object v0
.end method

.method static synthetic a(Lbdk;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 36
    iget-object p0, p0, Lbdk;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private b(Ljava/lang/String;)I
    .locals 1

    .line 81
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic b(Lbdk;)Landroid/util/LruCache;
    .locals 0

    .line 36
    iget-object p0, p0, Lbdk;->a:Landroid/util/LruCache;

    return-object p0
.end method


# virtual methods
.method public a(Lbfg;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 76
    invoke-interface {p1, v0}, Lbfg;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lbdk;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 45
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p1, 0x28

    const-string v0, ""

    .line 47
    invoke-static {v1, p1, v0}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    .line 49
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lbfg;)V
    .locals 3

    .line 91
    iget-object v0, p0, Lbdk;->e:Lcom/lzy/okgo/adapter/Call;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->cancel()V

    .line 94
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "keyword"

    .line 95
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 96
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x32

    .line 97
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "https://xmart.xiaopeng.com/media/v2/music/songs/manualSearch"

    .line 103
    invoke-static {v1}, Lbkn;->a(Ljava/lang/String;)Lbks;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Z

    .line 104
    invoke-virtual {v1, v0, v2}, Lbks;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lbks;

    new-instance v1, Lbkt;

    new-instance v2, Lbdk$1;

    invoke-direct {v2, p0, p1, p2}, Lbdk$1;-><init>(Lbdk;Ljava/lang/String;Lbfg;)V

    invoke-direct {v1, v2}, Lbkt;-><init>(Lbkv;)V

    .line 105
    invoke-virtual {v0, v1}, Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    iput-object p1, p0, Lbdk;->e:Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lbdk;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iput-object p3, p0, Lbdk;->d:Ljava/lang/String;

    return-void
.end method
