.class Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;
.super Lbkv;
.source "RdDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->k()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/category/view/b;->onUpdateTracksError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 512
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V
    .locals 2

    .line 515
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    const-string v0, "empty data"

    .line 516
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a(ILjava/lang/String;)V

    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;->getTotal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;I)I

    .line 520
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;->getTotalPage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;I)I

    .line 521
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->h()Ljava/util/List;

    .line 524
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getSort()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    const-string v1, "timeDesc"

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/category/view/b;->onUpdateSort(Ljava/lang/String;)V

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;->getPage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->c(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;I)I

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 534
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/program/category/view/b;->onUpdateTracks(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V

    .line 537
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V

    return-void
.end method
