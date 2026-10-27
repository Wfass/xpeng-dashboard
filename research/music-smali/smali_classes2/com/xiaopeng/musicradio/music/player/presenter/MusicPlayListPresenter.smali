.class public Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "MusicPlayListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/music/player/view/e;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/music/player/view/k$d;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    .line 39
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->b:Landroidx/lifecycle/r;

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->c:Z

    .line 41
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->d:Z

    return-void
.end method

.method private a(Landroidx/lifecycle/n;)V
    .locals 3

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->c:Z

    .line 56
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->b:Landroidx/lifecycle/r;

    new-instance v2, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;)V

    invoke-virtual {v1, p1, v2}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->d:Z

    return p0
.end method

.method private b(Z)V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/e;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/music/player/view/e;->refreshLoadState(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 180
    invoke-static {}, Layr;->a()Layr;

    move-result-object v0

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Layr;->a(I)Layq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1}, Layq;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 8

    .line 113
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->h()Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    .line 115
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v2

    invoke-virtual {v2}, Lbid;->q()I

    move-result v2

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 118
    new-instance v5, Lcom/xiaopeng/musicradio/music/player/view/k$d;

    invoke-direct {v5}, Lcom/xiaopeng/musicradio/music/player/view/k$d;-><init>()V

    .line 119
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaopeng/musicradio/music/player/view/k$d;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 121
    iput v2, v5, Lcom/xiaopeng/musicradio/music/player/view/k$d;->b:I

    goto :goto_1

    :cond_0
    const/4 v6, -0x1

    .line 123
    iput v6, v5, Lcom/xiaopeng/musicradio/music/player/view/k$d;->b:I

    .line 125
    :goto_1
    iput-object v4, v5, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 126
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v4

    const/16 v6, 0x3d

    if-ne v4, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, v5, Lcom/xiaopeng/musicradio/music/player/view/k$d;->e:Z

    .line 127
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_2
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->d:Z

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->b:Landroidx/lifecycle/r;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    .line 132
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->c:Z

    if-nez v0, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/view/e;

    invoke-interface {v0, v3, p1}, Lcom/xiaopeng/musicradio/music/player/view/e;->submitList(Ljava/util/List;Z)V

    :cond_3
    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 3

    .line 188
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->q()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 194
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->p()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 196
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->o()V

    goto :goto_1

    .line 190
    :cond_2
    :goto_0
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, v2}, Lbid;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ZIZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public c()I
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->b:Landroidx/lifecycle/r;

    invoke-virtual {v0}, Landroidx/lifecycle/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 142
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 143
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/music/player/view/k$d;

    iget v3, v3, Lcom/xiaopeng/musicradio/music/player/view/k$d;->b:I

    if-eq v3, v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public d()Z
    .locals 3

    .line 203
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v0, 0x0

    .line 207
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->p()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/a;->r()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 209
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->p()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/model/music/h;

    if-eqz v1, :cond_0

    .line 210
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/model/music/h;->m_()Lass;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 211
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/model/music/h;->m_()Lass;

    move-result-object v0

    invoke-virtual {v0}, Lass;->s()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 77
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;->a()I

    move-result p1

    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 78
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a(Z)V

    :cond_0
    return-void
.end method

.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 70
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result p1

    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 71
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a(Z)V

    :cond_0
    return-void
.end method

.method public dealLoadFail(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 94
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;->a()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 95
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->b(Z)V

    :cond_0
    return-void
.end method

.method public dealLoveEvent(Lasj$r;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealLoveEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lasj$r;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicPlayListPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a(Z)V

    return-void
.end method

.method public dealUpdateSongDuration(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateDuration;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/e;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/player/view/e;->updateList()V

    :cond_0
    return-void
.end method

.method public dealUpdateSongLogo(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateSongLogo;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 242
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/e;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/player/view/e;->updateList()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 218
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->p()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->r()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 220
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->p()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/music/h;

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/music/h;->m_()Lass;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 222
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/music/h;->m_()Lass;

    move-result-object v0

    invoke-virtual {v0}, Lass;->w()Z

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .line 255
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 46
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a(Landroidx/lifecycle/n;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->c:Z

    :goto_0
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 229
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->b:Landroidx/lifecycle/r;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onListRefresh(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 84
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->a()I

    move-result v0

    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v1

    invoke-virtual {v1}, Lbqp;->b()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 85
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->b()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 86
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->b(Z)V

    .line 88
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a(Z)V

    :cond_1
    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/view/e;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/player/view/e;->notifyList()V

    :cond_0
    return-void
.end method
