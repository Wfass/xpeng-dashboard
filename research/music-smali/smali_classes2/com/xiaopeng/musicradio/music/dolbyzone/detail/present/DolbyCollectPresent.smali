.class public Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;
.super Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;
.source "DolbyCollectPresent.java"


# instance fields
.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->f:Z

    return p1
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 4

    .line 53
    iget v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "listsign_singer_single_music"

    goto :goto_0

    :cond_0
    const-string v0, "listsign_recommend_music"

    .line 56
    :goto_0
    const-class v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 58
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getExtra()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getPrefix()Ljava/lang/String;

    move-result-object p1

    const-string v3, "dolby_netease_zone"

    .line 60
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "singer_music"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    :cond_1
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 62
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->b:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->b:Z

    goto :goto_1

    .line 66
    :cond_2
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->b:Z

    goto :goto_1

    .line 69
    :cond_3
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->b:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public c()V
    .locals 4

    .line 26
    iget v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->f:Z

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->showLoadingView()V

    .line 31
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iget v2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->h:I

    if-ne v2, v1, :cond_1

    .line 33
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v1

    invoke-virtual {v1}, Lbgr;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v1

    invoke-virtual {v1}, Lbgr;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    :goto_0
    new-instance v1, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent$1;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;Ljava/util/List;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lbql;->b(Ljava/lang/Runnable;J)V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->e:Z

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->h:I

    return-void
.end method
