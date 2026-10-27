.class Lbbg$1;
.super Ljava/lang/Object;
.source "CollectMusicHandler.java"

# interfaces
.implements Lbbo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbg;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbbo$a<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:Lbbg;


# direct methods
.method constructor <init>(Lbbg;IIIZI)V
    .locals 0

    .line 36
    iput-object p1, p0, Lbbg$1;->f:Lbbg;

    iput p2, p0, Lbbg$1;->a:I

    iput p3, p0, Lbbg$1;->b:I

    iput p4, p0, Lbbg$1;->c:I

    iput-boolean p5, p0, Lbbg$1;->d:Z

    iput p6, p0, Lbbg$1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;->getTotalPage()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;

    invoke-virtual {p0, p1}, Lbbg$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;)I

    move-result p1

    return p1
.end method

.method public a(II)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
            ">;"
        }
    .end annotation

    .line 39
    iget v0, p0, Lbbg$1;->a:I

    invoke-static {p1, p2, v0}, Layx;->a(III)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 4

    .line 116
    iget-object v0, p0, Lbbg$1;->f:Lbbg;

    iget-object v0, v0, Lbbg;->a:Laxz;

    iget-boolean v1, p0, Lbbg$1;->d:Z

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v3, Lbub$a;->server_error_tip:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v3, v2}, Laxz;->a(ZILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;I)V
    .locals 7

    const-string p1, "RxMusicModel"

    const-string v0, "preloadPageReq response responseFirstPageData"

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 99
    iget v0, p0, Lbbg$1;->a:I

    invoke-static {p2, v0}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;I)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 101
    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    move p2, p1

    .line 104
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 105
    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 106
    invoke-static {}, Lays;->a()Lays;

    move-result-object v1

    iget v2, p0, Lbbg$1;->a:I

    invoke-virtual {v1, v2}, Lays;->a(I)Layt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Layt;->a(II)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCreatime(J)V

    .line 107
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayTime(J)V

    .line 108
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanUp(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 111
    :cond_2
    iget-object p1, p0, Lbbg$1;->f:Lbbg;

    iget-object v1, p1, Lbbg;->a:Laxz;

    iget-boolean v2, p0, Lbbg$1;->d:Z

    iget v3, p0, Lbbg$1;->c:I

    iget v5, p0, Lbbg$1;->e:I

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Laxz;->a(ZIIILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Ljava/lang/Object;I)V
    .locals 0

    .line 36
    check-cast p2, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;

    invoke-virtual {p0, p1, p2, p3}, Lbbg$1;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CollectMusicHandler"

    const-string v1, "preloadPageReq response responsePageData"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;

    .line 55
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;->getPage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget p1, p0, Lbbg$1;->b:I

    .line 60
    iget v2, p0, Lbbg$1;->c:I

    const/4 v3, 0x0

    .line 64
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v4

    iget v5, p0, Lbbg$1;->a:I

    invoke-virtual {v4, v5}, Lbaf;->a(I)Lbae;

    move-result-object v4

    const/16 v5, 0x32

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lbae;->a(IZ)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 65
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 66
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 69
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v7, p1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 72
    invoke-static {v5}, Lcom/xiaopeng/musicradio/utils/ag;->b(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 74
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 77
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 78
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;->getTotalPage()I

    move-result v7

    .line 79
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;->getPage()I

    move-result p1

    iget v2, p0, Lbbg$1;->c:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_5
    const/4 p1, 0x2

    const/4 v1, 0x0

    if-eqz v3, :cond_6

    move v3, v1

    .line 83
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 84
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 85
    invoke-static {}, Lays;->a()Lays;

    move-result-object v5

    iget v8, p0, Lbbg$1;->a:I

    invoke-virtual {v5, v8}, Lays;->a(I)Layt;

    move-result-object v5

    invoke-virtual {v5, p1, v3}, Layt;->a(II)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCreatime(J)V

    .line 86
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayTime(J)V

    .line 87
    invoke-virtual {v4, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanUp(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x3

    .line 90
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, p1

    const-string p1, "page = %d, totalPage = %d, resultSize = %d"

    invoke-static {v0, p1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object p1, p0, Lbbg$1;->f:Lbbg;

    iget-object v4, p1, Lbbg;->a:Laxz;

    iget-boolean v5, p0, Lbbg$1;->d:Z

    iget v8, p0, Lbbg$1;->e:I

    move v6, v2

    invoke-virtual/range {v4 .. v9}, Laxz;->a(ZIIILjava/util/List;)V

    return-void
.end method
