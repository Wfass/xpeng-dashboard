.class Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter$1;
.super Lbkv;
.source "ZoneSongDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter;->f()V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getSongList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;-><init>()V

    .line 20
    new-instance v1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getPageInfo()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->setPage(Lcom/xiaopeng/musicradio/bean/common/PageBean;)V

    .line 22
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getSongList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->setList(Ljava/util/List;)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->setData(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;)V

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter;->a(Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter;->f()V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/present/ZoneSongDetailPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;)V

    return-void
.end method
