.class public Layz;
.super Ljava/lang/Object;
.source "ReissueInfoFactory.java"


# direct methods
.method private static a(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;I)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;
    .locals 4

    .line 69
    new-instance v0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqCollectIdTxBean;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getDissExtraId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqCollectIdTxBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v1, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;-><init>()V

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music_album_love"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setObjectId(Ljava/lang/String;)V

    .line 72
    invoke-static {p1}, Layz;->a(I)I

    move-result p0

    invoke-static {p0}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/common/a;->F()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setUrl(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setType(Ljava/lang/String;)V

    .line 74
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setValue(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setReissueType(I)V

    return-object v1
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;
    .locals 4

    .line 23
    new-instance v0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongExtraId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->setSongId(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getVersion()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    goto :goto_0

    :cond_0
    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->setVersions(Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;-><init>()V

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music_love"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setObjectId(Ljava/lang/String;)V

    .line 28
    invoke-static {p1}, Layz;->a(I)I

    move-result p0

    invoke-static {p0}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/common/a;->D()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setUrl(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setType(Ljava/lang/String;)V

    .line 30
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setValue(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setReissueType(I)V

    return-object v1
.end method

.method public static a(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 51
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 52
    new-instance v2, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongExtraId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->setSongId(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongExtraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->setSongExtraId(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getVersion()I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "2"

    goto :goto_1

    :cond_0
    const-string v3, "1"

    :goto_1
    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->setVersions(Ljava/lang/String;)V

    .line 56
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 57
    new-instance v3, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    invoke-direct {v3}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;-><init>()V

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "music_love"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setObjectId(Ljava/lang/String;)V

    .line 59
    invoke-static {p1}, Layz;->a(I)I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/common/a;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setUrl(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3, v5}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setType(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3, p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setReissueType(I)V

    .line 62
    invoke-virtual {v3, v2}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setValue(Ljava/lang/String;)V

    .line 63
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;I)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;
    .locals 4

    .line 90
    new-instance v0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqCollectIdTxBean;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getDissExtraId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqCollectIdTxBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v1, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;-><init>()V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music_album_love"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setObjectId(Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Layz;->a(I)I

    move-result p0

    invoke-static {p0}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/common/a;->G()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setUrl(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setType(Ljava/lang/String;)V

    .line 95
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setValue(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setReissueType(I)V

    return-object v1
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;
    .locals 4

    .line 36
    new-instance v0, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongExtraId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->setSongId(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongExtraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->setSongExtraId(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getVersion()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    goto :goto_0

    :cond_0
    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/user/QqSongIdsTxBean;->setVersions(Ljava/lang/String;)V

    .line 40
    new-instance v1, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;-><init>()V

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music_love"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setObjectId(Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Layz;->a(I)I

    move-result p0

    invoke-static {p0}, Lcom/xiaopeng/musicradio/common/m;->b(I)Lcom/xiaopeng/musicradio/common/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/common/a;->E()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setUrl(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setType(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setReissueType(I)V

    .line 45
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->setValue(Ljava/lang/String;)V

    return-object v1
.end method
