.class public Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "KugouZoneBannerItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->b:I

    return-void
.end method

.method private a(I)I
    .locals 1

    .line 81
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->c()Lbqn;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 82
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->c()Lbqn;

    move-result-object p1

    invoke-interface {p1}, Lbqn;->q()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;II)V
    .locals 8

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listsign_recommend_music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listsign_album"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .line 149
    iget v5, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->b:I

    const-string v4, ""

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lbjp;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 93
    iput p2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->b:I

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/a;->f()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 124
    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/bd;->l(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 111
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    const-string v1, "listsign_recommend_music"

    .line 112
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 117
    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result v2

    iget v3, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->b:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    .line 120
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object p1

    invoke-virtual {p1}, Lbak;->b()Lbaj;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .line 153
    iget v5, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->b:I

    const-string v4, ""

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lbjp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "\","

    const-string v4, "\"collectId\":\""

    if-nez v0, :cond_0

    const-string v0, "listsign_singer_single_music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 160
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 162
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "listsign_recommend_music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 163
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public d()V
    .locals 7

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->e()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    .line 44
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v2

    invoke-virtual {v2}, Lbqp;->b()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v2, -0x1

    if-eqz v1, :cond_3

    .line 52
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    const-string v4, "\","

    const-string v5, "\"collectId\":\""

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "listsign_singer_single_music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 53
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->a(I)I

    move-result v2

    goto :goto_1

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "listsign_recommend_music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 56
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->a(I)I

    move-result v2

    .line 59
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/a;

    invoke-interface {v0, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/a;->a(I)V

    goto :goto_2

    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/a;

    invoke-interface {v0, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/a;->a(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .line 88
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listsign_recommend_music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listsign_album"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->c:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-object v0
.end method

.method public o_()V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/a;->e()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 34
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    const-string p1, "KugouZoneBannerItemPresenter"

    const-string v0, "onCreateView"

    .line 35
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->j()V

    return-void
.end method
