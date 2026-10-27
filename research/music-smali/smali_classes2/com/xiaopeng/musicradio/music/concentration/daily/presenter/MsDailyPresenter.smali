.class public Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "MsDailyPresenter.java"

# interfaces
.implements Laxy$a;
.implements Laxy$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;",
        ">;",
        "Laxy$a;",
        "Laxy$b;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private e:Z

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->e:Z

    const/4 v1, 0x1

    .line 53
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->f:I

    .line 55
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    .line 321
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->f:I

    .line 323
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->f:I

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->g:Z

    return p1
.end method

.method private h()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, ""

    .line 377
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 378
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->e:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string p1, "MsDailyPresenter"

    const-string v0, "Daily--onDataFetch"

    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c()V

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;->updateTime()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 210
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->s()I

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/aj;->a(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 4

    const-string v0, "MsDailyPresenter"

    const-string v1, "playDailyMusic"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->f:I

    invoke-virtual {v0, v1}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 146
    :cond_1
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;->showLoadingView()V

    :cond_2
    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->e:Z

    .line 153
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Laxy;->a(Laxy$a;Z)V

    .line 154
    invoke-static {}, Lbfm;->a()Lbfm;

    move-result-object v1

    invoke-virtual {v1}, Lbfm;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;

    invoke-interface {v2, v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;->getData(Ljava/util/ArrayList;)V

    .line 157
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->j()V

    .line 159
    :cond_3
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->f:I

    new-instance v3, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;)V

    invoke-virtual {v1, v2, v0, v3}, Lasp;->a(IZLbkv;)V

    return-void
.end method

.method public changeAccountType(Lasj$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 316
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    .line 317
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a(I)V

    return-void
.end method

.method public changeTab(Lasj$e;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 297
    invoke-virtual {p1}, Lasj$e;->a()I

    move-result p1

    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->f:I

    if-ne p1, v0, :cond_0

    .line 298
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->d:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;->updateRadioPlayState(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 8

    .line 221
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lbie;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbxn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v2

    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->b:Ljava/util/ArrayList;

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    .line 224
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    const-string v1, "listsign_recommend_music"

    .line 225
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lbie;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lbie;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 231
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object v1

    invoke-virtual {v1}, Lbak;->b()Lbaj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "MsDailyPresenter"

    const-string v1, "reloadDataplayDailyMusic"

    .line 237
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->g()V

    .line 287
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->g:Z

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c()V

    :cond_0
    return-void
.end method

.method public n_()V
    .locals 2

    const-string v0, "MsDailyPresenter"

    const-string v1, "Daily--onErrorRetry"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 77
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->f:I

    .line 78
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxy;->a(Laxy$a;)V

    .line 79
    invoke-static {}, Lbfm;->a()Lbfm;

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "MsDailyPresenter"

    const-string v0, "onDestroy"

    .line 85
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxy;->b(Laxy$a;)V

    return-void
.end method

.method public onMusicBinded(Lasj$h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MsDailyPresenter"

    const-string v0, "onMusicBinded: "

    .line 345
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    .line 347
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c:Ljava/lang/String;

    .line 348
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a(I)V

    return-void
.end method

.method public onMusicBinded(Lasj$m;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MsDailyPresenter"

    const-string v0, "onMusicBinded: "

    .line 329
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    .line 331
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c:Ljava/lang/String;

    .line 332
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a(I)V

    return-void
.end method

.method public onMusicBinded(Lasj$t;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MsDailyPresenter"

    const-string v0, "onMusicBinded: "

    .line 337
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    .line 339
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c:Ljava/lang/String;

    .line 340
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a(I)V

    return-void
.end method

.method public onMusicUnBinded(Lasj$i;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MsDailyPresenter"

    const-string v0, "KugouUnBinded"

    .line 369
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    iget p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->f:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->h()V

    :cond_0
    return-void
.end method

.method public onMusicUnBinded(Lasj$s;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MsDailyPresenter"

    const-string v0, "onMusicUnBinded"

    .line 353
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    iget p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->f:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 355
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->h()V

    :cond_0
    return-void
.end method

.method public onMusicUnBinded(Lasj$u;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MsDailyPresenter"

    const-string v0, "NeteaseUnBinded"

    .line 361
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    iget p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->f:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->h()V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    if-eqz p1, :cond_3

    const-string p1, "MsDailyPresenter"

    const-string v0, "onResume"

    .line 94
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->b()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "firstplayDailyMusic"

    .line 106
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 100
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c:Ljava/lang/String;

    const-string v0, "uid changeplayDailyMusic"

    .line 101
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c()V

    return-void

    .line 108
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 109
    invoke-static {}, Lbfm;->a()Lbfm;

    move-result-object p1

    invoke-virtual {p1}, Lbfm;->b()Ljava/util/ArrayList;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 113
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 115
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->b:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;->getData(Ljava/util/ArrayList;)V

    .line 118
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->j()V

    return-void

    .line 121
    :cond_6
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c()V

    .line 124
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    .line 125
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->f:I

    if-ne p1, v0, :cond_7

    return-void

    .line 128
    :cond_7
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a(I)V

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;->updateTime()V

    :cond_8
    return-void
.end method

.method public onSwitchTab(Lcom/xiaopeng/musicradio/event/common/b$b;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchTab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tab = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsDailyPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recommend"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;->openDaily()V

    .line 388
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->d(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public reloadMusicTopData(Lasj$ad;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 306
    invoke-virtual {p1}, Lasj$ad;->a()I

    move-result p1

    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->f:I

    if-ne p1, v0, :cond_0

    .line 307
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c()V

    :cond_0
    return-void
.end method
