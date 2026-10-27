.class Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;
.super Lbkv;
.source "RdDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(JJ)Z
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
.field final synthetic a:J

.field final synthetic b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;J)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    iput-wide p2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->a:J

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/category/view/b;->onUpdateTracksError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 622
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V
    .locals 7

    .line 625
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p1, "empty data"

    .line 626
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->a(ILjava/lang/String;)V

    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;->getTotal()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;I)I

    .line 630
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;->getTotalPage()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;I)I

    .line 631
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->h()Ljava/util/List;

    .line 632
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$PageBean;->getPage()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->c(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;I)I

    .line 635
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getSort()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 636
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    const-string v2, "timeDesc"

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/xiaopeng/musicradio/program/category/view/b;->onUpdateSort(Ljava/lang/String;)V

    .line 643
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 644
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/program/category/view/b;->onUpdateSpecialTracks(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V

    .line 645
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->a:J

    invoke-interface {v0, v2, v3}, Lcom/xiaopeng/musicradio/program/category/view/b;->scrollToTrackItem(J)V

    .line 647
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->isFromCache()Z

    move-result v0

    if-nez v0, :cond_4

    .line 648
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    move v2, v1

    .line 651
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 652
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 653
    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v4}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 655
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v5}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->g(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    move v2, v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    if-eq v2, v1, :cond_7

    .line 661
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V

    :cond_7
    :goto_1
    return-void
.end method
