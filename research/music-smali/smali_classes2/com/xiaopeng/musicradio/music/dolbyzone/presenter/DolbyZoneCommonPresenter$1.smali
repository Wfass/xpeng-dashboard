.class Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter$1;
.super Ljava/lang/Object;
.source "DolbyZoneCommonPresenter.java"

# interfaces
.implements Lbgr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/f;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/f;->showLoadingFailed(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/DolbyResult;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 176
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/DolbyResult;->getNeteaseZoneDolbyBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/dolbyzone/view/f;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2, v2}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/f;->updateData(Lcom/xiaopeng/musicradio/bean/music/DolbyResult;II)V

    :cond_0
    if-eqz v0, :cond_4

    .line 181
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getSongDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getSongDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getSongDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 184
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getSongDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$SongDolbyListBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbgr;->a(Ljava/util/List;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getCollectDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getCollectDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getCollectDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 188
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getCollectDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$CollectDolbyListBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbgr;->b(Ljava/util/List;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getAlbumDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getAlbumDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 191
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getAlbumDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 192
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;->getAlbumDolbyListBean()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean$AlbumDolbyListBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbgr;->c(Ljava/util/List;)V

    .line 194
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/DolbyResult;->getMusicCollectSongListBean()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 195
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 196
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 197
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbgr;->d(Ljava/util/List;)V

    :cond_4
    return-void
.end method
