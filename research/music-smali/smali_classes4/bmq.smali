.class public Lbmq;
.super Ljava/lang/Object;
.source "ReadingRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbmq$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbmq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmq;->b:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbmq;->c:Ljava/util/Map;

    .line 32
    invoke-static {}, Larb;->a()Larb;

    move-result-object v0

    invoke-virtual {v0}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getReadingInfoDao()Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;

    move-result-object v0

    iput-object v0, p0, Lbmq;->d:Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;

    return-void
.end method

.method synthetic constructor <init>(Lbmq$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lbmq;-><init>()V

    return-void
.end method

.method public static a()Lbmq;
    .locals 1

    .line 40
    invoke-static {}, Lbmq$a;->a()Lbmq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbmq;)Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;
    .locals 0

    .line 27
    iget-object p0, p0, Lbmq;->d:Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 72
    iget-object v0, p0, Lbmq;->d:Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;->count()J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_0

    .line 74
    new-instance v1, Lbmq$2;

    invoke-direct {v1, p0, v0}, Lbmq$2;-><init>(Lbmq;I)V

    invoke-static {v1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method static synthetic b(Lbmq;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lbmq;->b()V

    return-void
.end method

.method static synthetic c(Lbmq;)Ljava/util/Map;
    .locals 0

    .line 27
    iget-object p0, p0, Lbmq;->c:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lbmq;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 27
    iget-object p0, p0, Lbmq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic e(Lbmq;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lbmq;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(J)Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;
    .locals 1

    .line 52
    iget-object v0, p0, Lbmq;->d:Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;

    return-object p1
.end method

.method public a(JLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 9

    .line 97
    iget-object v0, p0, Lbmq;->b:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "albumId "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is running, return"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReadingRepository"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lbmq;->b:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lbmq$3;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lbmq$3;-><init>(Lbmq;Ljava/lang/Runnable;Ljava/lang/Runnable;J)V

    invoke-virtual {v0, v1, v8}, Lbmv;->a(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V
    .locals 3

    .line 160
    iget-object v0, p0, Lbmq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setAlbumName(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getSmallLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setLogo(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getMediumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setMediumLogo(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getLargeLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setLargeLogo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V
    .locals 3

    .line 150
    iget-object v0, p0, Lbmq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAlbumName(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getSmallLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setLogo(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getMediumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setMediumLogo(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getLargeLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setLargeLogo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lbmq;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->getAlbumId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->getSort()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v0, Lbmq$1;

    invoke-direct {v0, p0, p1}, Lbmq$1;-><init>(Lbmq;Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public b(J)Ljava/lang/String;
    .locals 2

    .line 125
    invoke-virtual {p0, p1, p2}, Lbmq;->c(J)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lbmq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-eqz p1, :cond_2

    .line 128
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getLargeLogo()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getLargeLogo()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getMediumLogo()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 131
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getMediumLogo()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 132
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getSmallLogo()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 133
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getSmallLogo()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public c(J)Z
    .locals 1

    .line 146
    iget-object v0, p0, Lbmq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
