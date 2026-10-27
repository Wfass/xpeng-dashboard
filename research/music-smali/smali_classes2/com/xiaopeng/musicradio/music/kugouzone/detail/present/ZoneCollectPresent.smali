.class public Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;
.super Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;
.source "ZoneCollectPresent.java"


# instance fields
.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->h:I

    return p0
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getCollectList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 92
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 97
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    if-eq v3, v2, :cond_2

    if-nez v3, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {v1, p2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->b(Ljava/util/List;)V

    goto :goto_5

    .line 99
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {p2, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->showNoDataView(Ljava/lang/String;)V

    goto :goto_5

    .line 108
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 109
    iget v5, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->h:I

    if-ne v5, v2, :cond_4

    const-string v5, "listsign_recommend_music"

    .line 110
    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v5, "listsign_singer_single_music"

    .line 112
    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 114
    :goto_3
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 118
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    if-ne v3, v2, :cond_6

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {v1, p2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->a(Ljava/util/List;)V

    .line 121
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p2

    invoke-virtual {p2}, Lbid;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 123
    :cond_6
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {v1, p2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->b(Ljava/util/List;)V

    .line 126
    :cond_7
    :goto_4
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->f:Z

    :cond_8
    :goto_5
    if-eqz v0, :cond_b

    .line 129
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->g:I

    .line 130
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->isFromCache()Z

    move-result p1

    if-nez p1, :cond_9

    .line 131
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result p1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->d:I

    .line 133
    :cond_9
    iget p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->d:I

    iget p2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->g:I

    if-le p1, p2, :cond_b

    const/4 p1, 0x0

    .line 134
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->e:Z

    goto :goto_6

    .line 138
    :cond_a
    iget p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->d:I

    if-ne p1, v2, :cond_b

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_b
    :goto_6
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 66
    iget v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "listsign_singer_single_music"

    goto :goto_0

    :cond_0
    const-string v0, "listsign_recommend_music"

    .line 69
    :goto_0
    const-class v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 71
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getExtra()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getPrefix()Ljava/lang/String;

    move-result-object p1

    const-string v3, "new_music_radio"

    .line 73
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "singer_music"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    :cond_1
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 75
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->b:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->b:Z

    goto :goto_1

    .line 79
    :cond_2
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->b:Z

    goto :goto_1

    .line 82
    :cond_3
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->b:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public c()V
    .locals 5

    .line 27
    iget v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->f:Z

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->showLoadingView()V

    .line 32
    :cond_0
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->c:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->d:I

    const/16 v3, 0x1e

    new-instance v4, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent$1;

    invoke-direct {v4, p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent$1;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lasp;->c(Ljava/lang/String;IILbkv;)V

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->h:I

    return-void
.end method
