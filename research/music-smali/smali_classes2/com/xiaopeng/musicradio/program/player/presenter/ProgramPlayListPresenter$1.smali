.class Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;
.super Lbkv;
.source "ProgramPlayListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;Z)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->a:Z

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/player/view/a;->onUpdateTracksError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 302
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V
    .locals 9

    .line 305
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    const-string v0, "empty data"

    .line 306
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->a(ILjava/lang/String;)V

    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;->getTotal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;I)I

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;->getTotalPage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;I)I

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->f()Ljava/util/List;

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getSort()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    const-string v1, "timeDesc"

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/player/view/a;->onUpdateSort(Ljava/lang/String;)V

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;->getPage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;I)I

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;->getPageSize()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;I)I

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAlbumTracks response: ========= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " totalPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramPlayListPresente"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->l()Ljava/util/List;

    move-result-object v0

    .line 327
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 328
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 329
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 330
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getId()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 331
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->isAuthorized()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAuthorized(Z)V

    goto :goto_0

    .line 337
    :cond_5
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->a:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/program/player/view/a;->clearList()V

    .line 341
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/xiaopeng/musicradio/program/player/view/a;->onUpdateTracks(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;II)V

    :cond_7
    return-void
.end method
