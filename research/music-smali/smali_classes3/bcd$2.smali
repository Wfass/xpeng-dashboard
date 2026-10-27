.class Lbcd$2;
.super Ljava/lang/Object;
.source "KugouAlbumModel.java"

# interfaces
.implements Lbbo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcd;->b(Ljava/lang/String;Z)V
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Z

.field final synthetic e:Lbcd;


# direct methods
.method constructor <init>(Lbcd;ILjava/lang/String;Ljava/util/List;Z)V
    .locals 0

    .line 213
    iput-object p1, p0, Lbcd$2;->e:Lbcd;

    iput p2, p0, Lbcd$2;->a:I

    iput-object p3, p0, Lbcd$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lbcd$2;->c:Ljava/util/List;

    iput-boolean p5, p0, Lbcd$2;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 221
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 225
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

    .line 213
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;

    invoke-virtual {p0, p1}, Lbcd$2;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;)I

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

    .line 216
    iget v0, p0, Lbcd$2;->a:I

    invoke-static {p1, p2, v0}, Layx;->c(III)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 276
    iget-object v0, p0, Lbcd$2;->e:Lbcd;

    iget-object v0, v0, Lbcd;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 277
    new-instance v0, Lbfh$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lbfh$a;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;I)V
    .locals 7

    const-string p1, "RxMusicModel"

    const-string v0, "preloadPageReq response responseFirstPageData"

    .line 253
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 254
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 255
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    const-string p2, "KugouAlbumModel"

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 256
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCollectTypeSelf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 259
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 260
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;

    .line 261
    invoke-static {v2}, Layy;->b(Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;

    move-result-object v2

    .line 262
    iget-object v3, p0, Lbcd$2;->e:Lbcd;

    invoke-static {v3}, Lbcd;->d(Lbcd;)J

    move-result-wide v3

    int-to-long v5, v1

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setCacheTime(J)V

    .line 263
    iget-object v3, p0, Lbcd$2;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setUid(Ljava/lang/String;)V

    .line 264
    iget-object v3, p0, Lbcd$2;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCustom responseFirstPageData: customList size = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbcd$2;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " totalPage = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p3, v0, :cond_1

    .line 269
    iget-object p1, p0, Lbcd$2;->e:Lbcd;

    invoke-virtual {p1}, Lbcd;->f()Lbab;

    move-result-object p1

    iget-object p2, p0, Lbcd$2;->b:Ljava/lang/String;

    iget-object p3, p0, Lbcd$2;->c:Ljava/util/List;

    iget-boolean v0, p0, Lbcd$2;->d:Z

    invoke-virtual {p1, p2, p3, v0}, Lbab;->a(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Ljava/lang/Object;I)V
    .locals 0

    .line 213
    check-cast p2, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;

    invoke-virtual {p0, p1, p2, p3}, Lbcd$2;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;I)V

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

    .line 230
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 232
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;

    .line 233
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

    .line 236
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

    .line 237
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/FavouriteCollectBean$DataBean;

    move-result-object v2

    .line 238
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1e

    .line 239
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

    .line 240
    invoke-static {v3}, Layy;->b(Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;

    move-result-object v3

    .line 241
    iget-object v4, p0, Lbcd$2;->e:Lbcd;

    invoke-static {v4}, Lbcd;->c(Lbcd;)J

    move-result-wide v4

    int-to-long v6, v1

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setCacheTime(J)V

    .line 242
    iget-object v4, p0, Lbcd$2;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setUid(Ljava/lang/String;)V

    .line 243
    iget-object v4, p0, Lbcd$2;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getCustom  responsePageData: customList size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbcd$2;->c:Ljava/util/List;

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

    .line 248
    iget-object p1, p0, Lbcd$2;->e:Lbcd;

    invoke-virtual {p1}, Lbcd;->f()Lbab;

    move-result-object p1

    iget-object v0, p0, Lbcd$2;->b:Ljava/lang/String;

    iget-object v1, p0, Lbcd$2;->c:Ljava/util/List;

    iget-boolean v2, p0, Lbcd$2;->d:Z

    invoke-virtual {p1, v0, v1, v2}, Lbab;->a(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method
