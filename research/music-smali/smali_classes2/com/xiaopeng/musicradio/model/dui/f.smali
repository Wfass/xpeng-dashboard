.class public Lcom/xiaopeng/musicradio/model/dui/f;
.super Ljava/lang/Object;
.source "DuiMusicMediaQueryModel.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/model/dui/h$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 4

    .line 87
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 96
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c()Lcom/xiaopeng/musicradio/model/bluetooth/k;

    move-result-object v0

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/musicradio/model/dui/f;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 100
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/xiaopeng/musicradio/model/dui/f;->a(Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 103
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/musicradio/model/dui/f;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Ljava/lang/String;

    :goto_0
    const-string p1, ""

    return-object p1

    .line 90
    :cond_3
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 91
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/musicradio/model/dui/f;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 128
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    :cond_2
    return-object v0
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 115
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 117
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/dui/f;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;)V
    .locals 5

    .line 23
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 41
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c()Lcom/xiaopeng/musicradio/model/bluetooth/k;

    move-result-object v0

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setAlbum(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setArtist(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setTitle(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayType(I)V

    .line 47
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getPosition()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayTime(J)V

    .line 48
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getDuration()I

    move-result v0

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setRemainingTime(J)V

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    .line 50
    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setAlbum(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setArtist(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setTitle(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayType(I)V

    .line 54
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getPosition()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayTime(J)V

    .line 55
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getDuration()I

    move-result v0

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setRemainingTime(J)V

    goto/16 :goto_0

    :cond_2
    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayType(I)V

    .line 60
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setAlbum(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setArtist(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setTitle(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getPosition()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayTime(J)V

    .line 64
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getDuration()I

    move-result v0

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setRemainingTime(J)V

    goto :goto_0

    .line 26
    :cond_3
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayType(I)V

    .line 29
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setAlbum(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setArtist(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setTitle(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->getPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayTime(J)V

    .line 33
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->getDuration()I

    move-result v1

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/i;->getPosition()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setRemainingTime(J)V

    .line 34
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setSongId(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 78
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/dui/f;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    .line 83
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/dui/f;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 4

    .line 138
    invoke-static {}, Lazt;->a()Lazt;

    move-result-object v0

    invoke-virtual {v0}, Lazt;->b()Lazs;

    move-result-object v0

    invoke-virtual {v0}, Lazs;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 149
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bw;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
