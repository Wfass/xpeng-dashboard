.class public Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumDetailPresenter;
.super Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumPresenter;
.source "CollectedAlbumDetailPresenter.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumPresenter;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lasj$l;)V
    .locals 2

    .line 21
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lasj$l;->c()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/collect/album/presenter/CollectedAlbumDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/album/view/a;

    invoke-virtual {p1}, Lasj$l;->c()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    move-result-object v1

    invoke-virtual {p1}, Lasj$l;->b()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/mine/collect/album/view/a;->handleAlbum(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Z)V

    :cond_0
    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public r()Lcom/xiaopeng/musicradio/datalist/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
