.class public Layq;
.super Ljava/lang/Object;
.source "MusicCollectManager.java"

# interfaces
.implements Lbdq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layq$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Layq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a()Layq;
    .locals 1

    .line 71
    sget-object v0, Layq$a;->a:Layq;

    return-object v0
.end method

.method static synthetic a(Layq;Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Layq;->d(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V

    return-void
.end method

.method static synthetic a(Layq;ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Layq;->a(ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method private a(ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 2

    .line 424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "add"

    goto :goto_0

    :cond_0
    const-string p1, "cancel"

    :goto_0
    const-string v1, "result"

    .line 425
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "type"

    const-string v1, "music"

    .line 426
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    const-string v1, "voiceid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object p1

    const-string v1, "voice"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object p1

    const-string p2, "person"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-static {v0}, Lbrw;->c(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Layq;Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Layq;->c(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V

    return-void
.end method

.method private c(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
            "Landroidx/lifecycle/r<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Layq;->f()Lazy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lazy;->a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V

    .line 302
    invoke-static {}, Lare;->d()Lare;

    move-result-object p2

    invoke-virtual {p0}, Layq;->i()I

    move-result v0

    invoke-static {p1, v0}, Layz;->a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;I)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lare;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V

    .line 303
    invoke-static {}, Lbdy;->c()Lbdy;

    move-result-object p1

    invoke-virtual {p1}, Lbdy;->a()V

    return-void
.end method

.method private d(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
            "Landroidx/lifecycle/r<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Layq;->f()Lazy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lazy;->b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V

    .line 308
    invoke-static {}, Lare;->d()Lare;

    move-result-object p2

    invoke-virtual {p0}, Layq;->i()I

    move-result v0

    invoke-static {p1, v0}, Layz;->b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;I)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lare;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V

    .line 309
    invoke-static {}, Lbdy;->c()Lbdy;

    move-result-object p1

    invoke-virtual {p1}, Lbdy;->a()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 313
    invoke-virtual {p0}, Layq;->c()Lben;

    move-result-object v0

    invoke-interface {v0}, Lben;->g()Z

    move-result v0

    .line 314
    invoke-virtual {p0}, Layq;->s()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryFetchMusicLove: =========="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    invoke-virtual {p0}, Layq;->d()Layt;

    move-result-object v0

    const-string v1, "retryFetchMusicLove"

    invoke-virtual {v0, p1, v1}, Layt;->a(ILjava/lang/String;)Z

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;)V
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, p1, v0}, Layq;->a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
            "Landroidx/lifecycle/r<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Layq;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "musicAlbumCancelLove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Layq;->c()Lben;

    move-result-object v0

    new-instance v1, Layq$1;

    invoke-direct {v1, p0, p1, p2}, Layq$1;-><init>(Layq;Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V

    invoke-interface {v0, v1}, Lben;->a(Lbdm$b;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 5

    .line 270
    invoke-virtual {p0}, Layq;->e()Lbae;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbae;->h(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v0

    .line 271
    invoke-virtual {p0}, Layq;->s()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "musicLoveOrNotLocal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->toSimpleString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v3, "musicLoveOrNot: "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0, p1}, Layq;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0, p1}, Layq;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V
    .locals 5

    .line 485
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {p0}, Layq;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lbea;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-virtual {p0}, Layq;->e()Lbae;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbae;->c(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 488
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->clone()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 491
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFrom(I)V

    .line 492
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setInfoType(I)V

    .line 493
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    .line 494
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanUp(Z)V

    .line 495
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAppend(Z)V

    .line 496
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongExtraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 499
    invoke-virtual {p0, v1}, Layq;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 500
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isBipartite()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_1

    .line 501
    invoke-static {}, Lare;->d()Lare;

    move-result-object p2

    invoke-virtual {p0}, Layq;->i()I

    move-result v4

    invoke-static {p1, v4}, Layz;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    move-result-object v4

    invoke-virtual {p2, v4}, Lare;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V

    .line 503
    :cond_1
    invoke-direct {p0, v3, v1}, Layq;->a(ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 504
    new-instance p2, Layq$6;

    invoke-direct {p2, p0, v0}, Layq$6;-><init>(Layq;Ljava/lang/String;)V

    invoke-static {p2}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 512
    invoke-virtual {p0}, Layq;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 514
    :goto_0
    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    .line 515
    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFrom(I)V

    .line 516
    invoke-virtual {p0}, Layq;->g()Lbci;

    move-result-object p2

    invoke-virtual {p2, v1, v3, v2}, Lbci;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ZZ)V

    .line 518
    new-instance p2, Lasj$r;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, v3, p1}, Lasj$r;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Layq;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Layq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    new-instance v0, Lasj$k;

    invoke-direct {v0, p1, p2}, Lasj$k;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Layq;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "musicCancelLove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Layq;->c()Lben;

    move-result-object v0

    new-instance v1, Layq$5;

    invoke-direct {v1, p0, p1}, Layq$5;-><init>(Layq;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lben;->a(Lbdm$b;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1

    .line 417
    invoke-virtual {p0, p1}, Layq;->b(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Layq;->e()Lbae;

    move-result-object v0

    invoke-virtual {v0}, Lbae;->i()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)I
    .locals 3

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Layq;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 587
    iget-object v0, p0, Layq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 591
    :cond_0
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    invoke-virtual {v0, p1}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 592
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ax;->a(Ljava/lang/String;I)I

    move-result v0

    .line 593
    iget-object v1, p0, Layq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public b()V
    .locals 4

    .line 78
    invoke-static {}, Lbdv;->a()Lbdv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbdv;->a(Lbdq;)V

    .line 79
    invoke-static {}, Lbdy;->c()Lbdy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/common/a;->D()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lazh;

    invoke-direct {v3}, Lazh;-><init>()V

    invoke-virtual {v0, v2, v3}, Lbdy;->a(Ljava/lang/String;Lbdl$a;)V

    .line 80
    invoke-static {}, Lbdy;->c()Lbdy;

    move-result-object v0

    invoke-static {v1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/common/a;->E()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lazi;

    invoke-direct {v2}, Lazi;-><init>()V

    invoke-virtual {v0, v1, v2}, Lbdy;->a(Ljava/lang/String;Lbdl$a;)V

    .line 81
    invoke-static {}, Layt;->a()Layt;

    .line 82
    invoke-static {}, Layo;->a()Layo;

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;)V
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, p1, v0}, Layq;->b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
            "Landroidx/lifecycle/r<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Layq;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "musicAlbumLove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v2, "musicAlbumLove"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    invoke-virtual {p0}, Layq;->c()Lben;

    move-result-object v0

    new-instance v1, Layq$2;

    invoke-direct {v1, p0, p1, p2}, Layq$2;-><init>(Layq;Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V

    invoke-interface {v0, v1}, Lben;->a(Lbdm$b;)V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 6

    .line 288
    invoke-virtual {p0}, Layq;->e()Lbae;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbae;->h(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v0

    .line 289
    invoke-virtual {p0}, Layq;->s()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "musicLoveOrNotLocal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->toSimpleString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0, p1}, Layq;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p0, p1}, Layq;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 2

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Layq;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 599
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Layq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;)I
    .locals 3

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Layq;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 605
    iget-object v0, p0, Layq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 609
    :cond_0
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    invoke-virtual {v0, p1}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 610
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ax;->a(Ljava/lang/String;I)I

    move-result v0

    .line 611
    iget-object v1, p0, Layq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method protected c()Lben;
    .locals 1

    .line 86
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->b()Lbeg;

    move-result-object v0

    check-cast v0, Lben;

    return-object v0
.end method

.method public c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-virtual {p0}, Layq;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "musicLove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    invoke-virtual {p0}, Layq;->c()Lben;

    move-result-object v0

    new-instance v1, Layq$3;

    invoke-direct {v1, p0, p1}, Layq$3;-><init>(Layq;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-interface {v0, v1}, Lben;->a(Lbdm$b;)V

    return-void
.end method

.method protected d()Layt;
    .locals 1

    .line 90
    invoke-static {}, Layt;->a()Layt;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 3

    .line 439
    invoke-virtual {p0}, Layq;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "musicCancelLove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Layq;->c()Lben;

    move-result-object v0

    new-instance v1, Layq$4;

    invoke-direct {v1, p0, p1}, Layq$4;-><init>(Layq;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-interface {v0, v1}, Lben;->a(Lbdm$b;)V

    return-void
.end method

.method protected e()Lbae;
    .locals 1

    .line 94
    invoke-static {}, Lbad;->a()Lbad;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 527
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 531
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->clone()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getInfoType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    invoke-virtual {p0}, Layq;->s()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "try2SaveUser: upgrade user data hash = %s, from = %d"

    invoke-static {v1, p1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    invoke-virtual {p0}, Layq;->e()Lbae;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbae;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 536
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isBipartite()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getInfoType()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 537
    invoke-virtual {p0}, Layq;->s()Ljava/lang/String;

    move-result-object p1

    const-string v1, "try2SaveUser: report ===== "

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {p0, v0}, Layq;->f(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected f()Lazy;
    .locals 1

    .line 98
    invoke-static {}, Lazx;->a()Lazx;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 3

    .line 549
    invoke-virtual {p0}, Layq;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reissueAddUserList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->toSimpleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isCanUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    invoke-virtual {p0}, Layq;->s()Ljava/lang/String;

    move-result-object p1

    const-string v0, "reissueAddUserList: can not up"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 555
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v0

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 558
    :cond_1
    invoke-static {}, Lare;->d()Lare;

    move-result-object v0

    invoke-virtual {p0}, Layq;->i()I

    move-result v1

    invoke-static {p1, v1}, Layz;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lare;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V

    .line 563
    :goto_0
    invoke-static {}, Lbdy;->c()Lbdy;

    move-result-object p1

    invoke-virtual {p1}, Lbdy;->a()V

    return-void
.end method

.method protected g()Lbci;
    .locals 1

    .line 102
    invoke-static {}, Lbci;->h()Lbci;

    move-result-object v0

    return-object v0
.end method

.method protected h()Layo;
    .locals 1

    .line 106
    invoke-static {}, Layo;->a()Layo;

    move-result-object v0

    return-object v0
.end method

.method protected i()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 115
    invoke-virtual {p0}, Layq;->c()Lben;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Lben;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 2

    .line 121
    invoke-virtual {p0}, Layq;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearUserData: =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Layq;->d()Layt;

    move-result-object v0

    invoke-virtual {v0}, Layt;->e()V

    .line 123
    invoke-virtual {p0}, Layq;->e()Lbae;

    move-result-object v0

    invoke-virtual {v0}, Lbae;->f()V

    .line 124
    invoke-virtual {p0}, Layq;->f()Lazy;

    move-result-object v0

    invoke-virtual {v0}, Lazy;->j()V

    .line 125
    invoke-virtual {p0}, Layq;->q()Lazs;

    move-result-object v0

    invoke-virtual {v0}, Lazs;->g()V

    .line 126
    invoke-virtual {p0}, Layq;->p()V

    .line 129
    invoke-static {}, Lbao;->a()Lbao;

    move-result-object v0

    invoke-virtual {p0}, Layq;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lbao;->b(I)V

    .line 130
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {p0}, Layq;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->b(I)V

    .line 132
    invoke-virtual {p0}, Layq;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->e(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Layq;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->e(Ljava/lang/String;)V

    const-string v0, "music_user_play_mode"

    .line 135
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->e(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Layq;->h()Layo;

    move-result-object v0

    invoke-virtual {v0}, Layo;->h()V

    return-void
.end method

.method protected l()I
    .locals 1

    const v0, 0x20148

    return v0
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    const-string v0, "music_song_id"

    return-object v0
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    const-string v0, "music_user_song_id"

    return-object v0
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected p()V
    .locals 1

    .line 157
    invoke-static {}, Lare;->d()Lare;

    move-result-object v0

    invoke-virtual {v0}, Lare;->e()V

    return-void
.end method

.method protected q()Lazs;
    .locals 1

    .line 161
    invoke-static {}, Lazr;->a()Lazr;

    move-result-object v0

    return-object v0
.end method

.method public r()V
    .locals 3

    .line 166
    invoke-virtual {p0}, Layq;->d()Layt;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "downloadUserData"

    invoke-virtual {v0, v1, v2}, Layt;->a(ILjava/lang/String;)Z

    .line 167
    invoke-virtual {p0}, Layq;->h()Layo;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Layo;->a(IZ)V

    return-void
.end method

.method protected s()Ljava/lang/String;
    .locals 1

    const-string v0, "MusicCollectManager"

    return-object v0
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    const-string v0, "love_music_total_"

    return-object v0
.end method

.method protected u()Ljava/lang/String;
    .locals 1

    const-string v0, "love_music_total_page_"

    return-object v0
.end method
