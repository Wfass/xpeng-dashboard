.class public Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "DolbyZoneBannerItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 6

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-static {p1}, Lbgs;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 101
    :cond_1
    invoke-static {}, Lbjl;->q()V

    .line 102
    invoke-static {}, Lbjl;->l()V

    .line 103
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object p1

    invoke-virtual {p1}, Lbgr;->e()Ljava/util/List;

    move-result-object p1

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    .line 106
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 107
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 108
    invoke-static {v2}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_4
    sget p1, Lbez$g;->dubi_title:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-1004"

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bd;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v2

    .line 118
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 87
    iput p2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->b:I

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/a;->f()V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->d()V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            "I)V"
        }
    .end annotation

    .line 123
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 124
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0, p4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 126
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->q()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 127
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->p()V

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->o()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 132
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 136
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, p2

    move v2, p5

    move v5, p3

    invoke-static/range {v0 .. v6}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .line 153
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    .line 154
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public d()V
    .locals 2

    .line 53
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/a;->a(I)V

    :cond_1
    return-void
.end method

.method public dealBannerMusicEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->d()V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public o_()V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/a;->g()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 47
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    const-string p1, "DolbyZoneBannerItemPresenter"

    const-string v0, "onCreateView"

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
