.class public Layy;
.super Ljava/lang/Object;
.source "BizTransferUtil.java"


# direct methods
.method public static a(Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;
    .locals 3

    .line 10
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;-><init>()V

    .line 11
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->getCreateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCreateTime(J)V

    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setType(I)V

    .line 13
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setDescription(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setLogo(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setId(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->getDissExtraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setDissExtraId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;
    .locals 3

    .line 22
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->getCreateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setCreateTime(J)V

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setName(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setLogo(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setId(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;->getDissExtraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setDissExtraId(Ljava/lang/String;)V

    return-object v0
.end method
