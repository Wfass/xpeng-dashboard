.class public Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "BaseSearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method

.method private c(I)I
    .locals 1

    .line 55
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 56
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->d()Laqt;

    move-result-object p1

    invoke-interface {p1}, Laqt;->getPlayState()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private d(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 1

    .line 326
    new-instance v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter$1;-><init>(Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public a(I)I
    .locals 3

    .line 97
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbjr;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    .line 98
    invoke-interface {v0}, Lbjr;->getPlayingInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    .line 101
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 103
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->c(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public a(J)I
    .locals 4

    .line 82
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lblp;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblp;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Lblp;->getPlayingInfo()Lbls;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lbls;->d()J

    move-result-wide v2

    cmp-long p1, v2, p1

    if-nez p1, :cond_0

    .line 86
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 87
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->c(I)I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 70
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Lbfe;->getPlayingInfo()Lcom/xiaopeng/musicradio/music/api/bean/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/api/bean/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/api/bean/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/api/bean/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->c(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public a(ILjava/lang/String;IIILbkv;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "III",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;",
            ">;)V"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlay accountType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSearchPresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    if-eq p3, v0, :cond_1

    const/4 v0, 0x6

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    new-instance p1, Lasi$a;

    invoke-direct {p1}, Lasi$a;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 301
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lbdm;->a(Lbdm$b;)V

    goto :goto_1

    .line 298
    :cond_1
    :goto_0
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lbnz;->a(ILjava/lang/String;IIILbkv;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 2

    .line 111
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 112
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbjr;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->a(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->d()Laqt;

    move-result-object p1

    invoke-interface {p1}, Laqt;->pause()V

    goto :goto_0

    .line 117
    :cond_0
    invoke-interface {v0, p1}, Lbjr;->play(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 3

    .line 311
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    .line 312
    new-instance v1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 314
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 315
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    invoke-interface {v0}, Lbfe;->pause()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 318
    invoke-interface {v0}, Lbfe;->play()V

    goto :goto_0

    .line 320
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;I)V
    .locals 3

    .line 341
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    .line 342
    new-instance v1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 344
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 345
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    invoke-interface {v0}, Lbfe;->pause()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 348
    invoke-interface {v0}, Lbfe;->play()V

    goto :goto_0

    .line 350
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lbfe;->playMusic(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;II)V"
        }
    .end annotation

    .line 401
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p3

    const-class v0, Lbfe;

    invoke-virtual {p3, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lbfe;

    if-eqz p3, :cond_0

    .line 403
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->a()Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0, p4}, Lbfe;->playMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 3

    .line 161
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 162
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lblp;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblp;

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->a(J)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-interface {v0}, Lblp;->pause()V

    goto :goto_0

    .line 167
    :cond_0
    invoke-interface {v0, p1}, Lblp;->playReading(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;IIILbkv;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;",
            ">;)V"
        }
    .end annotation

    .line 271
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlay accountType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseSearchPresenter"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    new-instance p1, Lasi$a;

    invoke-direct {p1}, Lasi$a;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 289
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lbdm;->a(Lbdm$b;)V

    goto :goto_1

    .line 275
    :cond_1
    :goto_0
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lbnz;->a(Ljava/lang/String;IIILbkv;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 191
    new-instance v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    const-string v1, "listsign_recommend_music"

    .line 192
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setTag(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setCollectId(Ljava/lang/String;)V

    const-string v1, "new_music_radio"

    .line 195
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setExtra(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v1

    const-class v2, Lbfe;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfe;

    .line 198
    new-instance v2, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    invoke-interface {v1}, Lbfe;->pause()V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p3}, Lbfe;->playMusicByListSign(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 209
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    .line 210
    invoke-interface {v0, p1, p2, p3}, Lbfe;->recordMusicCollect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 218
    new-instance v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    const-string v1, "listsign_singer_single_music"

    .line 219
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setTag(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setCollectId(Ljava/lang/String;)V

    const-string v1, "singer_music"

    .line 222
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setExtra(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v1

    const-class v2, Lbfe;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfe;

    .line 225
    new-instance v2, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 229
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-interface {v1}, Lbfe;->pause()V

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lbfe;->playMusicByListSign(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 4

    .line 240
    new-instance v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    const-string v1, "listsign_singer_single_music"

    .line 241
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setTag(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setCollectId(Ljava/lang/String;)V

    const-string v1, "singer_music"

    .line 244
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setExtra(Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v1

    const-class v2, Lbfe;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfe;

    .line 247
    new-instance v2, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    .line 249
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 251
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-interface {v1}, Lbfe;->pause()V

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p4}, Lbfe;->playMusicByListSign(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->c()Ljava/lang/String;

    move-result-object p2

    .line 135
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "listsign_singer_single_music"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"collectId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 137
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->c(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 2

    .line 356
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0, p1}, Lbfe;->favMusicOrNot(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 262
    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/bd;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 263
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p2

    const-class p3, Lbfe;

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbfe;

    if-eqz p2, :cond_0

    .line 265
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p4}, Lbfe;->playMusicByListSign(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public b(I)Z
    .locals 0

    .line 378
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->a(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(I)Z

    move-result p1

    return p1
.end method

.method public b(J)Z
    .locals 0

    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->a(J)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(I)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->c()Ljava/lang/String;

    move-result-object p2

    .line 144
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "listsign_artist_radio"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"collectId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 146
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->c(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    .line 306
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    .line 307
    invoke-interface {v0}, Lbfe;->getListSign()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 363
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isHot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 366
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 368
    invoke-interface {v0, p1}, Lbfe;->isLove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->c()Ljava/lang/String;

    move-result-object p2

    .line 153
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "listsign_recommend_music"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"collectId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 155
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->c(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 173
    new-instance v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    const-string v1, "listsign_recommend_music"

    .line 174
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setTag(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setCollectId(Ljava/lang/String;)V

    const-string v1, "new_music_radio"

    .line 177
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setExtra(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v1

    const-class v2, Lbfe;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfe;

    .line 180
    new-instance v2, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    invoke-interface {v1}, Lbfe;->pause()V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lbfe;->playMusicByListSign(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(I)Z

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 386
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(I)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 390
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(I)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 51
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method
