.class public Lcom/xiaopeng/musicradio/service/MusicService;
.super Lcom/xiaopeng/musicradio/service/a;
.source "MusicService.java"

# interfaces
.implements Lbfe;


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/service/a;-><init>()V

    return-void
.end method

.method private a(Landroidx/lifecycle/r;Landroidx/lifecycle/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/r<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/lifecycle/s<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 590
    new-instance v0, Lcom/xiaopeng/musicradio/service/MusicService$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/service/MusicService$8;-><init>(Lcom/xiaopeng/musicradio/service/MusicService;Landroidx/lifecycle/r;Landroidx/lifecycle/s;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/service/MusicService;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/service/MusicService;->d()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/service/MusicService;Landroidx/lifecycle/r;Landroidx/lifecycle/s;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/service/MusicService;->a(Landroidx/lifecycle/r;Landroidx/lifecycle/s;)V

    return-void
.end method

.method private c()V
    .locals 5

    const-string v0, "MusicService"

    const-string v1, "playDailyMusic"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v1

    invoke-virtual {v1}, Lbdm;->g()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v1

    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v2

    invoke-virtual {v2}, Lbdu;->d()I

    move-result v2

    const/4 v3, 0x1

    new-instance v4, Lcom/xiaopeng/musicradio/service/MusicService$1;

    invoke-direct {v4, p0}, Lcom/xiaopeng/musicradio/service/MusicService$1;-><init>(Lcom/xiaopeng/musicradio/service/MusicService;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lbev;->b(IZLjava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method private d()V
    .locals 4

    .line 295
    new-instance v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    const-string v1, "listsign_recommend_music"

    .line 296
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setCollectId(Ljava/lang/String;)V

    const-string v1, "new_music_radio"

    .line 298
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setExtra(Ljava/lang/String;)V

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbxn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setTag(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/service/MusicService$2;

    const/16 v3, 0x32

    invoke-direct {v2, p0, v0, v3}, Lcom/xiaopeng/musicradio/service/MusicService$2;-><init>(Lcom/xiaopeng/musicradio/service/MusicService;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lass;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public changeSongQuality(I)V
    .locals 1

    .line 342
    invoke-static {}, Laye;->a()Laye;

    move-result-object v0

    invoke-virtual {v0, p1}, Laye;->a(I)V

    return-void
.end method

.method public clearUserData()V
    .locals 1

    .line 362
    new-instance v0, Lcom/xiaopeng/musicradio/service/MusicService$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/service/MusicService$3;-><init>(Lcom/xiaopeng/musicradio/service/MusicService;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public clearUserData(I)V
    .locals 1

    .line 380
    new-instance v0, Lcom/xiaopeng/musicradio/service/MusicService$4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/service/MusicService$4;-><init>(Lcom/xiaopeng/musicradio/service/MusicService;I)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public favMusicOrNot(Ljava/lang/Object;)Z
    .locals 4

    .line 189
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 190
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    const/16 v0, 0x28

    const-string v2, "\u641c\u7d22"

    .line 191
    invoke-static {p1, v0, v2}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 192
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v2

    invoke-virtual {v2}, Lbaf;->b()Lbae;

    move-result-object v2

    invoke-virtual {v2, p1}, Lbae;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->setHot(Z)V

    .line 198
    invoke-static {}, Layr;->a()Layr;

    move-result-object p1

    invoke-virtual {p1}, Layr;->b()Layq;

    move-result-object p1

    invoke-virtual {p1, v0}, Layq;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->setHot(Z)V

    .line 201
    invoke-static {}, Layr;->a()Layr;

    move-result-object p1

    invoke-virtual {p1}, Layr;->b()Layq;

    move-result-object p1

    invoke-virtual {p1, v0}, Layq;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :goto_0
    return v3

    :cond_1
    return v1
.end method

.method public favMusicOrNot(Z)Z
    .locals 4

    .line 211
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 214
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c()Lcom/xiaopeng/musicradio/model/bluetooth/k;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 219
    :goto_0
    invoke-static {}, Lbcj;->a()Lbcj;

    move-result-object v1

    invoke-virtual {v1}, Lbcj;->b()Lbci;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbci;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v1

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "favMusicOrNot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " love="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MusicService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    if-nez v1, :cond_3

    .line 224
    invoke-static {}, Layr;->a()Layr;

    move-result-object p1

    invoke-virtual {p1}, Layr;->b()Layq;

    move-result-object p1

    invoke-virtual {p1, v0}, Layq;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 228
    invoke-static {}, Layr;->a()Layr;

    move-result-object p1

    invoke-virtual {p1}, Layr;->b()Layq;

    move-result-object p1

    invoke-virtual {p1, v0}, Layq;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public getListSign()Ljava/lang/String;
    .locals 2

    .line 252
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getMusicCollectItem()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMusicListItem()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextInfo()Lcom/xiaopeng/musicradio/music/api/bean/b;
    .locals 3

    .line 149
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->A()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Lcom/xiaopeng/musicradio/music/api/bean/b;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/music/api/bean/b;-><init>()V

    .line 152
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->d(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->c(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->b(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->a(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->g(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/api/bean/b;->e(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayerAccountType()I
    .locals 1

    .line 634
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v0

    return v0
.end method

.method public getPlayingBtInfo()Lcom/xiaopeng/musicradio/music/api/bean/a;
    .locals 1

    .line 165
    invoke-static {}, Layd;->a()Layd;

    move-result-object v0

    invoke-virtual {v0}, Layd;->b()Lcom/xiaopeng/musicradio/music/api/bean/a;

    move-result-object v0

    return-object v0
.end method

.method public getPlayingInfo()Lcom/xiaopeng/musicradio/music/api/bean/b;
    .locals 4

    .line 109
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    new-instance v1, Lcom/xiaopeng/musicradio/music/api/bean/b;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/music/api/bean/b;-><init>()V

    .line 112
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->d(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v2

    invoke-virtual {v2}, Lbaf;->b()Lbae;

    move-result-object v2

    invoke-virtual {v2, v0}, Lbae;->h(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->a(Z)V

    .line 114
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->c(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->b(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->a(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->g(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->e(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->f(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->a(I)V

    .line 121
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->b(I)V

    .line 122
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getIsShortListen()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v2

    const-class v3, Lbsi;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsi;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v3

    invoke-interface {v2, v3}, Lbsi;->isXpVip(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v2

    const-class v3, Lbsi;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsi;

    invoke-interface {v2}, Lbsi;->isMusicVip()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->b(Z)V

    .line 123
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/api/bean/b;->h(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getStartPosition()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/api/bean/b;->c(I)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreInfo()Lcom/xiaopeng/musicradio/music/api/bean/b;
    .locals 3

    .line 133
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->z()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v1, Lcom/xiaopeng/musicradio/music/api/bean/b;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/music/api/bean/b;-><init>()V

    .line 136
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->d(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->c(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->b(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->a(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/api/bean/b;->g(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/music/api/bean/b;->e(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSongQuality()I
    .locals 1

    .line 337
    invoke-static {}, Laye;->a()Laye;

    move-result-object v0

    invoke-virtual {v0}, Laye;->b()I

    move-result v0

    return v0
.end method

.method public getUsbState4XiaoP()I
    .locals 2

    .line 490
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbqr;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqr;

    invoke-interface {v0}, Lbqr;->getUsbState4XiaoP()I

    move-result v0

    return v0
.end method

.method public getVipMusicCollectItemClass()Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVipMusicListItemClass()Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initUserData()V
    .locals 1

    .line 104
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->l()V

    return-void
.end method

.method public isBinded()Z
    .locals 1

    .line 547
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->I()Z

    move-result v0

    return v0
.end method

.method public isBtConnect()Z
    .locals 1

    .line 89
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result v0

    return v0
.end method

.method public isCanCollected()Z
    .locals 6

    .line 390
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 394
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 396
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v3

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    .line 397
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v3

    const/16 v5, 0x3c

    if-eq v3, v5, :cond_1

    .line 398
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 399
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 400
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bd;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bd;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    xor-int/lit8 v0, v1, 0x1

    return v0

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public isHasHistoryCache(Landroidx/lifecycle/r;Landroidx/lifecycle/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/r<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/lifecycle/s<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 561
    new-instance v0, Lcom/xiaopeng/musicradio/service/MusicService$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/service/MusicService$7;-><init>(Lcom/xiaopeng/musicradio/service/MusicService;Landroidx/lifecycle/r;Landroidx/lifecycle/s;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public isHasPlayCache()Z
    .locals 2

    .line 552
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/model/music/i;->d(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInCall()Z
    .locals 1

    .line 79
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->s()Z

    move-result v0

    return v0
.end method

.method public isInCall(Z)Z
    .locals 1

    .line 84
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->b(Z)Z

    move-result p1

    return p1
.end method

.method public isKugouInstalled()Z
    .locals 1

    .line 644
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0}, Lbhg;->c()Lbhh;

    move-result-object v0

    invoke-virtual {v0}, Lbhh;->h()Z

    move-result v0

    return v0
.end method

.method public isLove(Ljava/lang/Object;)Z
    .locals 2

    .line 478
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    if-eqz v0, :cond_0

    .line 479
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 480
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v0

    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lbaf;->a(I)Lbae;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbae;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Z

    move-result p1

    return p1

    .line 481
    :cond_0
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v0, :cond_1

    .line 482
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 483
    invoke-static {}, Lbcj;->a()Lbcj;

    move-result-object v0

    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lbcj;->a(I)Lbci;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbci;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isNeteaseInstalled()Z
    .locals 1

    .line 639
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0}, Lbhg;->b()Lbhi;

    move-result-object v0

    invoke-virtual {v0}, Lbhi;->h()Z

    move-result v0

    return v0
.end method

.method public isQualityPageOpend()Z
    .locals 5

    .line 517
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 521
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 522
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/f;->a()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz v3, :cond_3

    .line 524
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v0

    :goto_1
    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    return v1
.end method

.method public mute()V
    .locals 1

    .line 94
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->n()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 242
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 237
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->play()V

    return-void
.end method

.method public playCollect(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 666
    invoke-static {p2, p3}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p2

    .line 667
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object p2

    .line 668
    invoke-static {}, Lbij;->a()Lbij;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lbij;->a(Ljava/lang/String;I)V

    .line 669
    new-instance p2, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    const-string v0, "listsign_recommend_music"

    .line 670
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p2, p4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 674
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object p3

    invoke-virtual {p3, p1}, Lbak;->b(I)Lbaj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    return-void
.end method

.method public playDaily(I)V
    .locals 3

    .line 650
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/aj;->b(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/o;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbxn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 650
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 652
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 654
    invoke-static {}, Lbij;->a()Lbij;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lbij;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public playDailyMusic()V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/service/MusicService;->c()V

    return-void
.end method

.method public playHotMusic(Ljava/lang/String;)V
    .locals 1

    .line 184
    invoke-static {}, Lbdk;->a()Lbdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbdk;->a(Ljava/lang/String;)V

    return-void
.end method

.method public playMusic(Ljava/lang/String;)V
    .locals 2

    .line 432
    const-class v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    const/16 v0, 0x28

    const-string v1, "\u641c\u7d22"

    .line 433
    invoke-static {p1, v0, v1}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    .line 434
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method public playMusic(Ljava/lang/String;I)V
    .locals 3

    .line 439
    const-class v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    const/16 v0, 0x28

    const-string v1, "\u641c\u7d22"

    .line 440
    invoke-static {p1, v0, v1}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    .line 441
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ZIZ)V

    return-void
.end method

.method public playMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 446
    const-class v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 447
    new-instance v0, Lcom/xiaopeng/musicradio/service/MusicService$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/service/MusicService$5;-><init>(Lcom/xiaopeng/musicradio/service/MusicService;)V

    .line 448
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/service/MusicService$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 447
    invoke-static {p2, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const-string v0, ""

    const/16 v1, 0x28

    .line 450
    invoke-static {p1, v1, v0}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    .line 452
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 453
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 454
    invoke-static {v3, v1, v0}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    .line 455
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 457
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p2

    invoke-virtual {p2, v2, p1, p3}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V

    return-void
.end method

.method public playMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 462
    const-class v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 463
    new-instance v0, Lcom/xiaopeng/musicradio/service/MusicService$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/service/MusicService$6;-><init>(Lcom/xiaopeng/musicradio/service/MusicService;)V

    .line 464
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/service/MusicService$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 463
    invoke-static {p2, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const-string v0, ""

    const/16 v1, 0x28

    .line 466
    invoke-static {p1, v1, v0}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v4

    .line 468
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 469
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 470
    invoke-static {p2, v1, v0}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p2

    .line 471
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 473
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v2

    const/4 v6, 0x1

    move-object v5, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;ZI)V

    return-void
.end method

.method public playMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public playMusicByListSign(Ljava/lang/String;)V
    .locals 1

    .line 412
    invoke-static {}, Lbij;->a()Lbij;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbij;->a(Ljava/lang/String;)V

    return-void
.end method

.method public playMusicByListSign(Ljava/lang/String;I)V
    .locals 1

    .line 417
    invoke-static {}, Lbij;->a()Lbij;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbij;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public playMusicHistoryCache()V
    .locals 1

    .line 600
    new-instance v0, Lcom/xiaopeng/musicradio/service/MusicService$9;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/service/MusicService$9;-><init>(Lcom/xiaopeng/musicradio/service/MusicService;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public playPersonal(I)V
    .locals 2

    .line 659
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/aj;->c(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lbub$a;->personal_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 660
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 661
    invoke-static {}, Lbij;->a()Lbij;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lbij;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public playUsbMusic()V
    .locals 2

    .line 495
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbqr;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqr;

    invoke-interface {v0}, Lbqr;->playUsbMusic()V

    return-void
.end method

.method public querySearchHotSongs(Lbfg;)V
    .locals 1

    .line 170
    invoke-static {}, Lbdk;->a()Lbdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbdk;->a(Lbfg;)V

    return-void
.end method

.method public recordMusicCollect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 422
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    const-string v1, "listsign_recommend_music"

    .line 423
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object p1

    invoke-virtual {p1}, Lbak;->b()Lbaj;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    return-void
.end method

.method public resetPlayList()V
    .locals 2

    .line 357
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->p()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/musicradio/model/music/a;->a(ZZ)V

    return-void
.end method

.method public resetPlayList(I)V
    .locals 1

    .line 372
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->c(I)Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 374
    invoke-virtual {p1, v0, v0}, Lcom/xiaopeng/musicradio/model/music/a;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public resetUserData()V
    .locals 1

    .line 347
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->m()V

    return-void
.end method

.method public resetUserData(I)V
    .locals 1

    .line 352
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->b(I)V

    return-void
.end method

.method public searchMusicKeyword(Ljava/lang/String;Lbfg;)V
    .locals 1

    .line 175
    invoke-static {}, Lbdk;->a()Lbdk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbdk;->a(Ljava/lang/String;Lbfg;)V

    return-void
.end method

.method public startCollectDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 542
    invoke-static/range {v0 .. v6}, Lbjp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public switchUsbMusic()V
    .locals 4

    const-string v0, "MusicService"

    const-string v1, "switchUsbMusic:====="

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->t()Lcom/xiaopeng/musicradio/model/music/m;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 502
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->t()Lcom/xiaopeng/musicradio/model/music/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/m;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 503
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->t()Lcom/xiaopeng/musicradio/model/music/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/m;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/a;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 504
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->t()Lcom/xiaopeng/musicradio/model/music/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/m;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/a;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/model/music/i;->playNext(I)I

    goto :goto_1

    .line 505
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/service/MusicService;->playUsbMusic()V

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchUsbMusic: accountType========"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v3

    invoke-virtual {v3}, Lbdu;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 508
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/model/music/i;->playNext(I)I

    :cond_2
    :goto_1
    return-void
.end method

.method public unmute()V
    .locals 1

    .line 99
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->o()V

    return-void
.end method
