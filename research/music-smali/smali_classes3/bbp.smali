.class public Lbbp;
.super Lbbk;
.source "RankHandler.java"


# direct methods
.method public constructor <init>(Laxz;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lbbk;-><init>(Laxz;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIII)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/ListSignBean;",
            "ZIII)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getCollectId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getNType()I

    move-result p1

    invoke-static {p2, p1, p3, p4, p5}, Lbet;->b(Ljava/lang/String;IIII)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZLjava/util/List;IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/ListSignBean;",
            "Z",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;IIII)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    if-eqz p3, :cond_2

    .line 36
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    if-ne p7, v0, :cond_2

    .line 38
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_0

    move v0, v2

    .line 42
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 44
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 45
    new-instance v5, Lcom/xiaopeng/musicradio/bean/db/SongInfo;

    invoke-direct {v5}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;-><init>()V

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->setSongName(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Lbit;->a()Lbit;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getCollectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lbit;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 50
    new-instance v0, Lbhk$b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getCollectId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lbhk$b;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 51
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v0, :cond_2

    .line 53
    invoke-static {}, Lbit;->a()Lbit;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getCollectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbit;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object v1

    invoke-virtual {v1, p7}, Lbak;->b(I)Lbaj;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getCollectId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1, p7}, Lbaj;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    :cond_2
    iget-object v2, p0, Lbbp;->a:Laxz;

    move v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Laxz;->a(ZIIILjava/util/List;)V

    return-void
.end method
