.class public Lcom/xiaopeng/musicradio/program/model/dui/a;
.super Ljava/lang/Object;
.source "DuiProgramMediaModel.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/model/dui/g$a;


# static fields
.field private static final a:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/program/model/dui/a;->a:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    .line 65
    sget-object v0, Lcom/xiaopeng/musicradio/program/model/dui/a;->a:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;->setId(J)V

    .line 66
    sget-object v0, Lcom/xiaopeng/musicradio/program/model/dui/a;->a:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;->setLogo(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/xiaopeng/musicradio/program/model/dui/a;->a:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic n()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;
    .locals 1

    .line 58
    sget-object v0, Lcom/xiaopeng/musicradio/program/model/dui/a;->a:Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 72
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->c()V

    .line 73
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->play()V

    return-void
.end method

.method public a(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fa00000    # 1.25f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 398
    :cond_0
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbmt;->a(F)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 3

    .line 154
    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    move-result-object p1

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->setListed(I)V

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "search"

    if-eqz v1, :cond_0

    const-string v1, "speech"

    .line 158
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "voice"

    const-string v2, "reading"

    .line 162
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSearchType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "keyword"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getKeyWord()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {v0}, Lbrw;->b(Ljava/util/Map;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioBookPlay() called with: data = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiProgramMediaModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getListed()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 168
    new-instance p2, Lcom/xiaopeng/musicradio/program/model/dui/a$3;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/musicradio/program/model/dui/a$3;-><init>(Lcom/xiaopeng/musicradio/program/model/dui/a;Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;)V

    invoke-static {p2}, Lbql;->g(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 220
    :cond_1
    invoke-virtual {p2}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 221
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/program/model/dui/a$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/model/dui/a$6;-><init>(Lcom/xiaopeng/musicradio/program/model/dui/a;)V

    .line 222
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 271
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 272
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/program/model/dui/a$4;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/program/model/dui/a$4;-><init>(Lcom/xiaopeng/musicradio/program/model/dui/a;Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;)V

    new-instance p1, Lcom/xiaopeng/musicradio/program/model/dui/a$5;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/program/model/dui/a$5;-><init>(Lcom/xiaopeng/musicradio/program/model/dui/a;)V

    .line 273
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 221
    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 78
    new-instance v0, Lcom/xiaopeng/musicradio/program/model/dui/a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/program/model/dui/a$1;-><init>(Lcom/xiaopeng/musicradio/program/model/dui/a;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    .line 119
    new-instance v0, Lcom/xiaopeng/musicradio/program/model/dui/a$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/program/model/dui/a$2;-><init>(Lcom/xiaopeng/musicradio/program/model/dui/a;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 3

    .line 357
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 359
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v1

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getChannelId()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lbmn;->b(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;Z)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    .line 344
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v1

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbmn;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 3

    .line 370
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v0

    invoke-virtual {v0}, Lbmr;->e()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x3fa00000    # 1.25f

    if-nez v1, :cond_0

    .line 372
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbmt;->a(F)V

    goto :goto_0

    :cond_0
    cmpl-float v1, v0, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    if-nez v1, :cond_1

    .line 374
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbmt;->a(F)V

    goto :goto_0

    :cond_1
    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 376
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lbmt;->a(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public i()V
    .locals 4

    .line 382
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v0

    invoke-virtual {v0}, Lbmr;->e()F

    move-result v0

    const/high16 v1, 0x3fa00000    # 1.25f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    .line 384
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lbmt;->a(F)V

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3fc00000    # 1.5f

    cmpl-float v3, v0, v2

    if-nez v3, :cond_1

    .line 386
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbmt;->a(F)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 388
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbmt;->a(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public j()V
    .locals 11

    .line 404
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v0

    invoke-virtual {v0}, Lbmm;->c()Ljava/util/List;

    move-result-object v0

    const-string v1, "DuiProgramMediaModel"

    const-string v2, "onPlayNews: =========="

    .line 405
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xa

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    .line 406
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v7, "onPlayNews2: ============ "

    .line 416
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

    .line 418
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 419
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getTrackInfoBos()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getTrackInfoBos()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 420
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getTrackInfoBos()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;

    .line 421
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getChannelId()I

    move-result v9

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getRelativeId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 427
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getRelativeId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :catch_0
    new-instance v7, Lbms$a;

    invoke-direct {v7}, Lbms$a;-><init>()V

    .line 432
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getChannelId()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Lcom/xiaopeng/musicradio/utils/aj;->a(J)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 433
    invoke-virtual {v7, v8}, Lbms$a;->a(Ljava/util/List;)Lbms$a;

    move-result-object v1

    .line 434
    invoke-virtual {v1, v6}, Lbms$a;->b(Z)Lbms$a;

    move-result-object v1

    .line 435
    invoke-virtual {v1, v6}, Lbms$a;->a(I)Lbms$a;

    move-result-object v1

    .line 436
    invoke-virtual {v1, v2}, Lbms$a;->b(I)Lbms$a;

    move-result-object v1

    .line 437
    invoke-virtual {v1, v5}, Lbms$a;->c(I)Lbms$a;

    move-result-object v1

    .line 438
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getChannelId()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {v1, v5, v6}, Lbms$a;->a(J)Lbms$a;

    move-result-object v0

    .line 439
    invoke-virtual {v0, v3, v4}, Lbms$a;->b(J)Lbms$a;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lbms$a;->a()Lbms;

    move-result-object v0

    .line 441
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bc;->a(Lass;)V

    return-void

    .line 407
    :cond_2
    :goto_1
    new-instance v0, Lbms$a;

    invoke-direct {v0}, Lbms$a;-><init>()V

    .line 408
    invoke-static {v3, v4}, Lcom/xiaopeng/musicradio/utils/aj;->a(J)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object v0

    .line 409
    invoke-virtual {v0, v6}, Lbms$a;->a(I)Lbms$a;

    move-result-object v0

    .line 410
    invoke-virtual {v0, v2}, Lbms$a;->b(I)Lbms$a;

    move-result-object v0

    .line 411
    invoke-virtual {v0, v5}, Lbms$a;->c(I)Lbms$a;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Lbms$a;->a()Lbms;

    move-result-object v0

    .line 413
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bc;->a(Lass;)V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 2

    const-string v0, "DuiProgramMediaModel"

    const-string v1, "onPlayXmly"

    .line 461
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    invoke-virtual {v1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "onPlayXmly:hasPlay"

    .line 464
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->play()V

    goto :goto_0

    :cond_0
    const-string v1, "onPlayXmly:playGuessLike"

    .line 467
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v0

    invoke-virtual {v0}, Lbmm;->e()V

    :goto_0
    return-void
.end method
