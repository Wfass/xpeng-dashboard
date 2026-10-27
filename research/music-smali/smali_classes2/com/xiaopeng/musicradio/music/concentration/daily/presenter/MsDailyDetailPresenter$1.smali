.class Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter$1;
.super Lbkv;
.source "MsDailyDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;->c()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;->f()V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 27
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->isFromCache()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 28
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 29
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 30
    invoke-static {v1}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 32
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHttpCache(Z)V

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 37
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;->b(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;)I

    move-result v1

    invoke-virtual {p1, v1}, Lbak;->b(I)Lbaj;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;)I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Lbaj;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    :cond_2
    invoke-static {}, Lbfm;->a()Lbfm;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;->c(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lbfm;->a(Ljava/util/List;I)V

    .line 40
    invoke-static {}, Lbfm;->a()Lbfm;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;->d(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyDetailPresenter;)I

    move-result v0

    invoke-virtual {p1, v0}, Lbfm;->d(I)V

    :cond_3
    return-void
.end method
