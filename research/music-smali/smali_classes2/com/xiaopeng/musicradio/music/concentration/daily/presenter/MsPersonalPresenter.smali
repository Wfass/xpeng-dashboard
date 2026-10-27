.class public Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "MsPersonalPresenter.java"

# interfaces
.implements Laxy$a;
.implements Laxy$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;",
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

.field private c:Z

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c:Z

    const/4 v1, 0x1

    .line 48
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e:I

    .line 50
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->f:Z

    .line 52
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e:I

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->g:Z

    return p1
.end method

.method private h()V
    .locals 4

    .line 81
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 83
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->h()Ljava/util/List;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 85
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 88
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    if-le v2, v3, :cond_0

    .line 89
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    if-le v2, v0, :cond_1

    .line 92
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    invoke-static {}, Lbfm;->a()Lbfm;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e:I

    invoke-virtual {v0, v1, v2}, Lbfm;->b(Ljava/util/List;I)V

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;->getData(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private i()Z
    .locals 2

    .line 105
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e:I

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->s()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public ChangeSourceType(Lasj$d;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x1

    .line 265
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->f:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 311
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string p1, "MsPersonalPresenter"

    const-string v0, "Daily--onDataFetch"

    .line 56
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c()V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 186
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->s()I

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 5

    const-string v0, "MsPersonalPresenter"

    const-string v1, "playDailyMusic"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->j()V

    .line 111
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c:Z

    if-eqz v1, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e:I

    invoke-virtual {v1, v2}, Lbdm;->a(I)Lbeg;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 115
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e:I

    invoke-virtual {v1, v2}, Lbdm;->a(I)Lbeg;

    move-result-object v1

    invoke-interface {v1}, Lbeg;->g()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 118
    :cond_1
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->d:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->h()V

    return-void

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;

    invoke-interface {v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;->showLoadingView()V

    :cond_3
    const/4 v1, 0x1

    .line 127
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c:Z

    .line 128
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Laxy;->a(Laxy$a;Z)V

    .line 129
    invoke-static {}, Lbfm;->a()Lbfm;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e:I

    invoke-virtual {v2, v3}, Lbfm;->c(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;

    invoke-interface {v3, v2}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;->getData(Ljava/util/ArrayList;)V

    .line 133
    :cond_4
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e:I

    new-instance v4, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;

    invoke-direct {v4, p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;)V

    invoke-virtual {v2, v3, v1, v0, v4}, Lasp;->a(IZLjava/lang/String;Lbkv;)V

    return-void
.end method

.method public changeTab(Lasj$e;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 270
    invoke-virtual {p1}, Lasj$e;->a()I

    move-result p1

    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e:I

    if-ne p1, v0, :cond_0

    .line 271
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 191
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->h()V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->d:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;->updateRadioPlayState(Z)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 8

    .line 200
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->c()Ljava/lang/String;

    move-result-object v0

    sget v1, Lbez$g;->personal_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v0, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;-><init>()V

    .line 206
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->setListSign(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->setList(Ljava/util/List;)V

    .line 208
    iget v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->setAccountType(I)V

    const/4 v2, 0x0

    .line 209
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/music/logic/msplayopt/MsPlayOptParam;->setSupportRandom(Z)V

    .line 210
    iget v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "MsPersonalPresenter"

    const-string v1, "reloadDataplayDailyMusic"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 228
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->g()V

    .line 229
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->g:Z

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c()V

    :cond_0
    return-void
.end method

.method public n_()V
    .locals 2

    const-string v0, "MsPersonalPresenter"

    const-string v1, "Daily--onErrorRetry"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 70
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxy;->a(Laxy$a;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "MsPersonalPresenter"

    const-string v0, "onDestroy"

    .line 76
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
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

    const-string p1, "MsPersonalPresenter"

    const-string v0, "onMusicBinded: "

    .line 304
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    iget p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c()V

    :cond_0
    return-void
.end method

.method public onMusicBinded(Lasj$m;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MsPersonalPresenter"

    const-string v0, "onMusicBinded: "

    .line 288
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iget p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c()V

    :cond_0
    return-void
.end method

.method public onMusicBinded(Lasj$t;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MsPersonalPresenter"

    const-string v0, "onMusicBinded: "

    .line 296
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c()V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1

    .line 239
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->j()V

    .line 242
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->f:Z

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c()V

    goto :goto_1

    .line 245
    :cond_0
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->d:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 246
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->h()V

    goto :goto_0

    .line 248
    :cond_1
    invoke-static {}, Lbfm;->a()Lbfm;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e:I

    invoke-virtual {p1, v0}, Lbfm;->c(I)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 249
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;->getData(Ljava/util/ArrayList;)V

    .line 257
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->g:Z

    if-nez p1, :cond_4

    .line 258
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c()V

    :cond_4
    :goto_1
    return-void
.end method

.method public reloadMusicTopData(Lasj$ad;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 279
    invoke-virtual {p1}, Lasj$ad;->a()I

    move-result p1

    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e:I

    if-ne p1, v0, :cond_0

    .line 280
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c()V

    :cond_0
    return-void
.end method
