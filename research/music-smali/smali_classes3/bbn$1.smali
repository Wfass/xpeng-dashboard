.class Lbbn$1;
.super Lbkv;
.source "PhoneMusicHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbn;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbbn;


# direct methods
.method constructor <init>(Lbbn;Z)V
    .locals 0

    .line 25
    iput-object p1, p0, Lbbn$1;->b:Lbbn;

    iput-boolean p2, p0, Lbbn$1;->a:Z

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lbbn$1;->b:Lbbn;

    iget-object v0, v0, Lbbn;->a:Laxz;

    iget-boolean v1, p0, Lbbn$1;->a:Z

    invoke-virtual {v0, v1, p1, p2}, Laxz;->a(ZILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean;)V
    .locals 8

    const-string v0, "RxMusicModel"

    const-string v1, "getUserFavouritesCollectsSonglist response"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 31
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Lbbn$1;->b:Lbbn;

    iget-object v2, p1, Lbbn;->a:Laxz;

    iget-boolean v3, p0, Lbbn$1;->a:Z

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual/range {v2 .. v7}, Laxz;->a(ZIIILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean;

    invoke-virtual {p0, p1}, Lbbn$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicAlbumSongListBean;)V

    return-void
.end method
