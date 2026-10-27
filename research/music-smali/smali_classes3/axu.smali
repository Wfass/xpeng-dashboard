.class public Laxu;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# direct methods
.method public static a(I)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;>;"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 55
    invoke-interface {v0, p0}, Lbfc;->getHistoryMusicList(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Z)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            "Z)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 283
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 284
    invoke-interface {v0, p0, p1}, Lbfc;->setCollectedAlbum(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public static a(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/datalist/f;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/musicradio/datalist/g<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;>;"
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 45
    invoke-interface {v0, p0}, Lbfc;->getCollectedMusicList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/datalist/f;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/musicradio/datalist/g<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;>;"
        }
    .end annotation

    .line 461
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 462
    invoke-interface {v0, p0, p1}, Lbfc;->getDetailPlayList(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public static a()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 2

    .line 154
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 155
    invoke-interface {v0}, Lbfc;->getPlayingMusic()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object v0
.end method

.method public static a(II)Lfe;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lfe<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 341
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/aj;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Laxu;->a(Ljava/lang/String;I)Lfe;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)Lfe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lfe<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 345
    invoke-static {}, Laxu;->e()Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-eqz p1, :cond_0

    .line 349
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    .line 351
    invoke-static {}, Laxu;->b()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 353
    :goto_0
    sget p1, Lcom/xiaopeng/musicradio/mine/a$e;->bt_play_all:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    goto :goto_1

    .line 360
    :cond_1
    sget p1, Lcom/xiaopeng/musicradio/mine/a$e;->bt_continue_all:I

    goto :goto_1

    .line 357
    :cond_2
    sget p1, Lcom/xiaopeng/musicradio/mine/a$e;->bt_pause_all:I

    .line 365
    :goto_1
    new-instance v0, Lfe;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lfe;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 243
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 244
    invoke-interface {v0, p0}, Lbfc;->getListSign(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Ljava/lang/String;)V
    .locals 1

    .line 333
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tag_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 334
    invoke-static {p2}, Laxu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-static {p0, p2, p3}, Laxu;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 308
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 309
    invoke-interface {v0, p0, p1, p2}, Lbfc;->startDetail(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;)V
    .locals 1

    .line 313
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->iv_icon:I

    if-eq p0, v0, :cond_0

    .line 314
    invoke-static {p1}, Laxu;->a(Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Ljava/lang/String;)V
    .locals 1

    .line 325
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tag_play:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    invoke-static {p1}, Laxu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Laxu;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->iv_icon:I

    if-eq p0, v0, :cond_0

    .line 320
    invoke-static {p1, p2, p3}, Laxu;->a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;)V
    .locals 2

    .line 109
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 110
    new-instance v1, Laxu$1;

    invoke-direct {v1}, Laxu$1;-><init>()V

    invoke-interface {v0, p0, v1}, Lbfc;->play(Ljava/lang/Object;Lbff;)V

    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 2

    .line 124
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 125
    new-instance v1, Laxu$2;

    invoke-direct {v1}, Laxu$2;-><init>()V

    invoke-interface {v0, p0, v1}, Lbfc;->play(Ljava/lang/Object;Lbff;)V

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 273
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    const/4 v1, 0x0

    .line 274
    invoke-interface {v0, p0, v1}, Lbfc;->setCollectedMusic(Ljava/lang/Object;Z)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 100
    invoke-interface {v0, p0, p1, p2}, Lbfc;->play(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 105
    invoke-interface {v0, p0, p1}, Lbfc;->playMusicInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 184
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 185
    invoke-static {}, Laxu;->a()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)Z
    .locals 1

    if-nez p1, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isHttpCache()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v0, Lbfc;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbfc;

    .line 268
    invoke-interface {p1, p0}, Lbfc;->isCollectedMusic(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 264
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v0, Lbfd;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbfd;

    .line 265
    invoke-interface {p1, p0}, Lbfd;->isLocalLoveMusic(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 177
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 178
    invoke-static {}, Laxu;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    .line 179
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b()I
    .locals 2

    .line 160
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 161
    invoke-interface {v0}, Lbfc;->getPlayState()I

    move-result v0

    return v0
.end method

.method public static b(I)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
            ">;>;"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 65
    invoke-interface {v0, p0}, Lbfc;->getMobileAlbumList(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public static b(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/datalist/f;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/musicradio/datalist/g<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;>;"
        }
    .end annotation

    .line 49
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 50
    invoke-interface {v0, p0}, Lbfc;->getCollectedAlbumList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public static b(II)Lfe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lfe<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 369
    invoke-static {}, Laxu;->e()Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-eqz p1, :cond_0

    .line 373
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/aj;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    .line 375
    invoke-static {}, Laxu;->b()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 377
    :goto_0
    sget p1, Lcom/xiaopeng/musicradio/mine/a$e;->bt_play_all:I

    .line 378
    sget v0, Lcom/xiaopeng/musicradio/mine/a$b;->ic_music_play_s_48:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    goto :goto_1

    .line 386
    :cond_1
    sget p1, Lcom/xiaopeng/musicradio/mine/a$e;->bt_continue_all:I

    goto :goto_1

    .line 382
    :cond_2
    sget p1, Lcom/xiaopeng/musicradio/mine/a$e;->bt_pause_all:I

    .line 383
    sget v0, Lcom/xiaopeng/musicradio/mine/a$b;->ic_music_pause_s_48:I

    .line 391
    :goto_1
    new-instance p0, Lfe;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lfe;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V
    .locals 2

    .line 278
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 279
    invoke-interface {v0, p0, p1}, Lbfc;->setCollectedMusic(Ljava/lang/Object;Z)Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 288
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 289
    invoke-interface {v0, p0}, Lbfc;->removeHistoryMusic(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 2

    .line 519
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 520
    invoke-interface {v0, p0}, Lbfc;->isNewMatchedBlue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Z
    .locals 5

    .line 208
    invoke-static {}, Laxu;->e()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    .line 213
    invoke-static {p0}, Laxu;->c(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v2, v4

    :cond_0
    return v2

    .line 217
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"collectId\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v4

    :cond_2
    return v2
.end method

.method public static c(I)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;>;"
        }
    .end annotation

    .line 74
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 75
    invoke-interface {v0, p0}, Lbfc;->getBlueMusicList(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public static c(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/datalist/f;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/musicradio/datalist/g<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;>;"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 60
    invoke-interface {v0, p0}, Lbfc;->getHistoryAlbumList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public static c(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Ljava/lang/String;
    .locals 2

    .line 248
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 249
    invoke-interface {v0, p0}, Lbfc;->getListSign(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 2

    .line 524
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfd;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfd;

    .line 525
    invoke-interface {v0, p0}, Lbfd;->updateLocalLove(Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 298
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 299
    invoke-interface {v0, p0}, Lbfc;->removeBlueMusic(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c()Z
    .locals 2

    .line 165
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 166
    invoke-static {}, Laxu;->a()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d(I)I
    .locals 2

    .line 395
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->bt_pause_all:I

    .line 396
    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->bt_pause_all:I

    if-ne p0, v1, :cond_0

    .line 397
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->bt_continue_all:I

    :cond_0
    return v0
.end method

.method public static d(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/datalist/f;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/musicradio/datalist/g<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;>;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 70
    invoke-interface {v0, p0}, Lbfc;->getUserAlbumList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public static d(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 2

    .line 293
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 294
    invoke-interface {v0, p0}, Lbfc;->removeHistoryAlbum(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static d()Z
    .locals 2

    .line 171
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 172
    invoke-static {}, Laxu;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    .line 173
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .line 238
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    .line 239
    invoke-interface {v0}, Lbfe;->getListSign()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(I)V
    .locals 2

    .line 403
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfd;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfd;

    .line 404
    invoke-interface {v0, p0}, Lbfd;->checkoutDataCollect(I)V

    return-void
.end method

.method public static f()V
    .locals 2

    .line 438
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 439
    invoke-interface {v0}, Lbfc;->fetchCollectedAlbum()V

    return-void
.end method

.method public static f(I)V
    .locals 2

    .line 443
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 444
    invoke-interface {v0, p0}, Lbfc;->fetchCollectedAlbum(I)V

    return-void
.end method

.method public static g()V
    .locals 2

    .line 453
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfc;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfc;

    .line 454
    invoke-interface {v0}, Lbfc;->fetchCustomAlbumIfRequire()V

    return-void
.end method

.method public static h()I
    .locals 2

    .line 529
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfd;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfd;

    .line 530
    invoke-interface {v0}, Lbfd;->getCollectedMusicCount()I

    move-result v0

    return v0
.end method
