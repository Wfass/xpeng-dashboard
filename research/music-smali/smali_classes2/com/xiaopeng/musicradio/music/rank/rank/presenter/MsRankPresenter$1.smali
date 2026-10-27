.class Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;
.super Lbkv;
.source "MsRankPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 114
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Laxy;->a(Laxy$a;Z)V

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/rank/rank/view/a;

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/music/rank/rank/view/a;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;)V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 72
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    iput-object p1, v0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->b:Ljava/util/List;

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    iget-object v3, v0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->b:Ljava/util/List;

    invoke-static {v0, v3, p1}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response: isSameData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MsRankPresenter"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    return-void

    .line 82
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/rank/rank/view/a;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/music/rank/rank/view/a;->showNoDataView(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 87
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    const-string v3, "listsign_rank_music"

    .line 88
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 94
    invoke-static {}, Lbit;->a()Lbit;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lbit;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/rank/rank/view/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/rank/rank/view/a;->getData(Ljava/util/List;)V

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->k()V

    .line 101
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-static {p1, v2}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;Z)Z

    goto :goto_2

    .line 104
    :cond_6
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-virtual {p1, v0, v2}, Laxy;->a(Laxy$a;Z)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/rank/rank/view/a;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/music/rank/rank/view/a;->showErrorView(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 68
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;)V

    return-void
.end method
