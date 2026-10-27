.class Lbcd$1$1;
.super Ljava/lang/Object;
.source "KugouAlbumModel.java"

# interfaces
.implements Lbbo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcd$1;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbbo$a<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/HashSet;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lbcd$1;


# direct methods
.method constructor <init>(Lbcd$1;ILjava/util/HashSet;Ljava/util/List;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lbcd$1$1;->d:Lbcd$1;

    iput p2, p0, Lbcd$1$1;->a:I

    iput-object p3, p0, Lbcd$1$1;->b:Ljava/util/HashSet;

    iput-object p4, p0, Lbcd$1$1;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 133
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;

    invoke-virtual {p0, p1}, Lbcd$1$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;)I

    move-result p1

    return p1
.end method

.method public a(II)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;",
            ">;"
        }
    .end annotation

    .line 136
    iget v0, p0, Lbcd$1$1;->a:I

    invoke-static {p1, p2, v0}, Layx;->b(III)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 198
    iget-object v0, p0, Lbcd$1$1;->d:Lbcd$1;

    iget-object v0, v0, Lbcd$1;->c:Lbcd;

    iget-object v0, v0, Lbcd;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 199
    new-instance v0, Lbfh$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lbfh$a;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;I)V
    .locals 6

    const-string p1, "RxMusicModel"

    const-string v0, "preloadPageReq response responseFirstPageData"

    .line 174
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 176
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 177
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    const-string p2, "KugouAlbumModel"

    if-eqz p1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCollectTypeCollect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 180
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 181
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;

    .line 182
    invoke-static {v1}, Layy;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lbcd$1$1;->d:Lbcd$1;

    iget-object v2, v2, Lbcd$1;->c:Lbcd;

    invoke-static {v2}, Lbcd;->b(Lbcd;)J

    move-result-wide v2

    int-to-long v4, v0

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCacheTime(J)V

    .line 184
    iget-object v2, p0, Lbcd$1$1;->d:Lbcd$1;

    iget-object v2, v2, Lbcd$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setUid(Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lbcd$1$1;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v2, p0, Lbcd$1$1;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCollect responseFirstPageData: customList size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbcd$1$1;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " totalPage = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    .line 191
    iget-object p1, p0, Lbcd$1$1;->d:Lbcd$1;

    iget-object p1, p1, Lbcd$1;->c:Lbcd;

    invoke-virtual {p1}, Lbcd;->e()Lazy;

    move-result-object p1

    iget-object p2, p0, Lbcd$1$1;->d:Lbcd$1;

    iget-object p2, p2, Lbcd$1;->a:Ljava/lang/String;

    iget-object p3, p0, Lbcd$1$1;->c:Ljava/util/List;

    iget-object v0, p0, Lbcd$1$1;->b:Ljava/util/HashSet;

    iget-object v1, p0, Lbcd$1$1;->d:Lbcd$1;

    iget-boolean v1, v1, Lbcd$1;->b:Z

    invoke-virtual {p1, p2, p3, v0, v1}, Lazy;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/HashSet;Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Ljava/lang/Object;I)V
    .locals 0

    .line 133
    check-cast p2, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;

    invoke-virtual {p0, p1, p2, p3}, Lbcd$1$1;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "RxMusicModel"

    const-string v1, "preloadPageReq response responsePageData"

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;

    .line 152
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;

    move-result-object v2

    .line 157
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1e

    .line 158
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;

    .line 159
    invoke-static {v3}, Layy;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    move-result-object v3

    .line 160
    iget-object v4, p0, Lbcd$1$1;->d:Lbcd$1;

    iget-object v4, v4, Lbcd$1;->c:Lbcd;

    invoke-static {v4}, Lbcd;->a(Lbcd;)J

    move-result-wide v4

    int-to-long v6, v1

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCacheTime(J)V

    .line 161
    iget-object v4, p0, Lbcd$1$1;->d:Lbcd$1;

    iget-object v4, v4, Lbcd$1;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setUid(Ljava/lang/String;)V

    .line 162
    iget-object v4, p0, Lbcd$1$1;->b:Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v4, p0, Lbcd$1$1;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 167
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getCollect  responsePageData: collectedList size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbcd$1$1;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "list size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KugouAlbumModel"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object p1, p0, Lbcd$1$1;->d:Lbcd$1;

    iget-object p1, p1, Lbcd$1;->c:Lbcd;

    invoke-virtual {p1}, Lbcd;->e()Lazy;

    move-result-object p1

    iget-object v0, p0, Lbcd$1$1;->d:Lbcd$1;

    iget-object v0, v0, Lbcd$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lbcd$1$1;->c:Ljava/util/List;

    iget-object v2, p0, Lbcd$1$1;->b:Ljava/util/HashSet;

    iget-object v3, p0, Lbcd$1$1;->d:Lbcd$1;

    iget-boolean v3, v3, Lbcd$1;->b:Z

    invoke-virtual {p1, v0, v1, v2, v3}, Lazy;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/HashSet;Z)V

    return-void
.end method
