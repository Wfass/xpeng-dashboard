.class Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter$1;
.super Lbkv;
.source "NewSongMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgp;

    const-string p2, ""

    invoke-interface {p1, p2}, Lbgp;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;)V
    .locals 4

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ltz v1, :cond_4

    .line 48
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgp;

    invoke-interface {p1, v2}, Lbgp;->showNoDataView(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgp;

    invoke-interface {p1, v0}, Lbgp;->getData(Ljava/util/ArrayList;)V

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;->a(Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;->a(Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 67
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgp;

    invoke-interface {p1, v2}, Lbgp;->showNoDataView(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgp;

    invoke-interface {p1, v2}, Lbgp;->showErrorView(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/present/NewSongMainPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;)V

    return-void
.end method
