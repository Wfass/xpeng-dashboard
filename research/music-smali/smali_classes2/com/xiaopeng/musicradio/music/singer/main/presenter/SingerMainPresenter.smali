.class public Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "SingerMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/singer/main/view/b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Z

.field protected h:I

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    const-string v0, "-1000ABC"

    .line 29
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->e:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->b:Z

    .line 32
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->g:Z

    .line 36
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->h:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->b:Z

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->e:Ljava/lang/String;

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->showLoadingView()V

    .line 110
    :cond_0
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->h:I

    new-instance v2, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lasp;->a(ILjava/lang/String;Ljava/lang/String;Lbkv;)V

    return-void
.end method

.method protected a(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 151
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v2, v1

    .line 152
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 153
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public b(I)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->h:I

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "-1000ABC"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->i:Ljava/util/List;

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "singer_music"

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "listsign_artist_radio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->f:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->d:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->updatePlayState(Z)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    .line 54
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->showLoadingView()V

    .line 60
    :cond_1
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->h:I

    new-instance v2, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;)V

    invoke-virtual {v0, v1, v2}, Lasp;->d(ILbkv;)V

    return-void
.end method

.method public i()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->b:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->g:Z

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->e:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->f:Ljava/lang/String;

    return-object v0
.end method

.method public o_()V
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->notifySpeechChange()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 42
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    const-string p1, "SingerMainPresenter"

    const-string v0, "onCreate"

    .line 43
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->j()V

    return-void
.end method

.method public onMusicUnBinded(Lasj$i;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "SingerMainPresenter"

    const-string v0, "KugouUnBinded"

    .line 273
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->onMusicAuthCheck(I)V

    :cond_0
    return-void
.end method

.method public onMusicUnBinded(Lasj$s;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "SingerMainPresenter"

    const-string v0, "onMusicUnBinded"

    .line 257
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->onMusicAuthCheck(I)V

    :cond_0
    return-void
.end method

.method public onMusicUnBinded(Lasj$u;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "SingerMainPresenter"

    const-string v0, "NeteaseUnBinded"

    .line 265
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->onMusicAuthCheck(I)V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->j()V

    return-void
.end method

.method public p()V
    .locals 1

    const-string v0, "-1000ABC"

    .line 213
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->e:Ljava/lang/String;

    .line 214
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->b:Z

    .line 216
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->g:Z

    return-void
.end method

.method public q()V
    .locals 3

    .line 224
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->showLoadingView()V

    .line 230
    :cond_1
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->h:I

    new-instance v2, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$3;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$3;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;)V

    invoke-virtual {v0, v1, v2}, Lasp;->d(ILbkv;)V

    return-void
.end method
