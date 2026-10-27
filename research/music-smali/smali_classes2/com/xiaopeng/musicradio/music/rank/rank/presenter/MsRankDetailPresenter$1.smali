.class Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter$1;
.super Lbkv;
.source "MsRankDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->f()V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 9

    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->a(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    .line 29
    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->b(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 30
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_1

    .line 38
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 39
    new-instance v6, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-direct {v6}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;-><init>()V

    .line 40
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSingers()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->setSongName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 43
    :cond_1
    invoke-static {}, Lbit;->a()Lbit;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    invoke-static {v4}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->c(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lbit;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 45
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-static {v0}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 46
    invoke-static {}, Lbit;->a()Lbit;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->d(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbit;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->g(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;)I

    move-result v2

    invoke-virtual {v1, v2}, Lbak;->b(I)Lbaj;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->e(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->f(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lbaj;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;->a(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method
