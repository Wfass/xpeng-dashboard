.class public Lbmm;
.super Ljava/lang/Object;
.source "ProgramDataModel.java"

# interfaces
.implements Laxy$a;
.implements Laxy$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbmm$a;
    }
.end annotation


# static fields
.field private static g:I


# instance fields
.field private a:Lcom/lzy/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Z

.field private d:Lio/reactivex/disposables/Disposable;

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;

.field private n:J

.field private o:Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;

.field private p:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lbmm;->b:I

    .line 52
    iput-boolean v0, p0, Lbmm;->c:Z

    .line 55
    iput v0, p0, Lbmm;->e:I

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lbmm;->f:Ljava/util/List;

    .line 62
    iput v0, p0, Lbmm;->h:I

    .line 63
    iput v0, p0, Lbmm;->i:I

    .line 64
    iput v0, p0, Lbmm;->j:I

    .line 66
    iput v0, p0, Lbmm;->k:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmm;->l:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 413
    iput-wide v0, p0, Lbmm;->n:J

    .line 436
    iput-wide v0, p0, Lbmm;->p:J

    .line 77
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Laxy;->a(Laxy$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lbmm$1;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lbmm;-><init>()V

    return-void
.end method

.method static synthetic a(Lbmm;I)I
    .locals 0

    .line 49
    iput p1, p0, Lbmm;->e:I

    return p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    .line 160
    iget-object v0, p0, Lbmm;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Laxy;->a(Laxy$a;Z)V

    .line 164
    new-instance v0, Lash$d;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lash$d;-><init>(II)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 166
    iput v2, p0, Lbmm;->b:I

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBannerData error ==> code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",msg: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ProgramDataModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lbmm;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lbmm;->j()V

    return-void
.end method

.method static synthetic a(Lbmm;ILjava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lbmm;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lbmm;Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lbmm;->b(Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;)V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 305
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->getPageBean()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 306
    iget-object v0, p0, Lbmm;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 309
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->getPageBean()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    move v3, v2

    .line 312
    :goto_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 313
    iget-object v4, p0, Lbmm;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 314
    iget-object v4, p0, Lbmm;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 317
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->getPageBean()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v3

    iput v3, p0, Lbmm;->i:I

    .line 318
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->getPageBean()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result p1

    iput p1, p0, Lbmm;->h:I

    .line 319
    iget p1, p0, Lbmm;->i:I

    if-ne p1, v1, :cond_5

    .line 320
    invoke-virtual {p0, v2}, Lbmm;->a(Z)V

    :cond_5
    const/4 p1, 0x2

    if-eqz v0, :cond_6

    .line 324
    new-instance v0, Lash$d;

    invoke-direct {v0, p1, v2}, Lash$d;-><init>(II)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    .line 325
    iput v2, p0, Lbmm;->j:I

    goto :goto_2

    .line 327
    :cond_6
    new-instance v0, Lash$d;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lash$d;-><init>(II)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    .line 328
    iput v1, p0, Lbmm;->j:I

    .line 330
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getGuessLikePage response ==> state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lbmm;->j:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgramDataModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lbmm;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lbmm;->c:Z

    return p1
.end method

.method static synthetic b(Lbmm;I)I
    .locals 0

    .line 49
    iput p1, p0, Lbmm;->b:I

    return p1
.end method

.method public static b()Lbmm;
    .locals 1

    .line 73
    sget-object v0, Lbmm$a;->a:Lbmm;

    return-object v0
.end method

.method static synthetic b(Lbmm;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lbmm;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lbmm;Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lbmm;->a(Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;)V

    return-void
.end method

.method private b(Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;)V
    .locals 2

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbmm;->p:J

    if-eqz p1, :cond_1

    .line 440
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 441
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->isFromCache()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    iput-object p1, p0, Lbmm;->o:Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 444
    iput-object p1, p0, Lbmm;->o:Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;

    return-void
.end method

.method static synthetic c(Lbmm;I)I
    .locals 0

    .line 49
    iput p1, p0, Lbmm;->j:I

    return p1
.end method

.method static synthetic c(Lbmm;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lbmm;->c:Z

    return p0
.end method

.method static synthetic d(Lbmm;)I
    .locals 0

    .line 49
    iget p0, p0, Lbmm;->b:I

    return p0
.end method

.method private j()V
    .locals 1

    .line 188
    iget-object v0, p0, Lbmm;->d:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lbmm;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method private k()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;
    .locals 4

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbmm;->p:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 452
    iget-object v0, p0, Lbmm;->o:Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 92
    iput p1, p0, Lbmm;->b:I

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;)V
    .locals 2

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbmm;->n:J

    if-eqz p1, :cond_1

    .line 417
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;->getRankList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;->getRankList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;->isFromCache()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    iput-object p1, p0, Lbmm;->m:Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 421
    iput-object p1, p0, Lbmm;->m:Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lbmm;->c:Z

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0, p1}, Lbmm;->a(ZZ)V

    return-void
.end method

.method public a(Z)V
    .locals 8

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 383
    sget p1, Lbmm;->g:I

    add-int/2addr p1, v1

    sput p1, Lbmm;->g:I

    .line 384
    iget-object p1, p0, Lbmm;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget v2, Lbmm;->g:I

    mul-int/2addr v2, v0

    sub-int/2addr p1, v2

    const/16 v2, 0xc

    if-ge p1, v2, :cond_0

    .line 386
    iget p1, p0, Lbmm;->i:I

    iget v2, p0, Lbmm;->h:I

    if-ge p1, v2, :cond_0

    add-int/2addr p1, v1

    .line 387
    invoke-virtual {p0, p1}, Lbmm;->b(I)V

    .line 391
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_3

    .line 394
    sget v5, Lbmm;->g:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v3

    .line 395
    iget-object v6, p0, Lbmm;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 396
    iget-object v6, p0, Lbmm;->f:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 397
    :cond_1
    iget-object v6, p0, Lbmm;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int v6, v5, v6

    iget-object v7, p0, Lbmm;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 398
    iget-object v4, p0, Lbmm;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 403
    sput v2, Lbmm;->g:I

    .line 405
    :cond_4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lash$g;

    invoke-direct {v1, p1}, Lash$g;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callGetBannerData isFirst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fromNet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramDataModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 109
    iget-object p2, p0, Lbmm;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 110
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p2}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lbmm;->a:Lcom/lzy/okgo/adapter/Call;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/lzy/okgo/adapter/Call;->isExecuted()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 111
    :cond_0
    new-instance p2, Lash$d;

    invoke-direct {p2, v0, v0}, Lash$d;-><init>(II)V

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 113
    iput v0, p0, Lbmm;->b:I

    .line 114
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p0, v1}, Laxy;->a(Laxy$a;Z)V

    .line 115
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object p2

    new-instance v1, Lbmm$1;

    invoke-direct {v1, p0, p1}, Lbmm$1;-><init>(Lbmm;Z)V

    invoke-virtual {p2, v1, v0}, Lbmv;->a(Lbkv;Z)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    iput-object p1, p0, Lbmm;->a:Lcom/lzy/okgo/adapter/Call;

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Laxy;->a(Laxy$a;Z)V

    .line 149
    new-instance p1, Lash$d;

    const/4 p2, 0x3

    invoke-direct {p1, v0, p2}, Lash$d;-><init>(II)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 151
    iput p2, p0, Lbmm;->b:I

    goto :goto_0

    .line 154
    :cond_2
    new-instance p1, Lash$d;

    const/4 p2, 0x2

    invoke-direct {p1, v0, p2}, Lash$d;-><init>(II)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGuessLikePage: ======= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbmm;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramDataModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget v0, p0, Lbmm;->h:I

    if-eqz v0, :cond_0

    if-gt p1, v0, :cond_2

    .line 261
    :cond_0
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    const-string v2, "getGuessLike"

    invoke-virtual {v0, v2}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 263
    invoke-direct {p0}, Lbmm;->k()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string p1, "getGuessLikePage: load cache ====== "

    .line 264
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0}, Lbmm;->k()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;

    move-result-object p1

    invoke-direct {p0, p1}, Lbmm;->a(Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;)V

    return-void

    .line 269
    :cond_1
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v0

    new-instance v1, Lbmm$3;

    invoke-direct {v1, p0, p1}, Lbmm$3;-><init>(Lbmm;I)V

    invoke-virtual {v0, p1, v1}, Lbmv;->a(ILbkv;)V

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 365
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 366
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lbmm;->l:Ljava/util/List;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 462
    iput p1, p0, Lbmm;->k:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 88
    iget v0, p0, Lbmm;->b:I

    return v0
.end method

.method public e()V
    .locals 3

    .line 339
    iget-object v0, p0, Lbmm;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayXmly:playGuessLikemGuessLikeList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbmm;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramDataModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lbmm;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 342
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbmt;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    return-void

    .line 345
    :cond_0
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lbmm$4;

    invoke-direct {v2, p0}, Lbmm$4;-><init>(Lbmm;)V

    invoke-virtual {v0, v1, v2}, Lbmv;->b(ILbkv;)V

    return-void
.end method

.method public f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;"
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGuessLikeList size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbmm;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramDataModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lbmm;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 375
    iget v0, p0, Lbmm;->j:I

    return v0
.end method

.method public h()Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;
    .locals 4

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbmm;->n:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 429
    iget-object v0, p0, Lbmm;->m:Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 458
    iget v0, p0, Lbmm;->k:I

    return v0
.end method

.method public n_()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 103
    invoke-virtual {p0, v0, v1}, Lbmm;->a(ZZ)V

    return-void
.end method

.method public receiveReadingBinded(Lasj$ab;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 207
    new-instance p1, Lbmm$2;

    invoke-direct {p1, p0}, Lbmm$2;-><init>(Lbmm;)V

    invoke-static {p1}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method
