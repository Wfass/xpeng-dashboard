.class Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;
.super Lbkv;
.source "RankListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;I)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    iput p2, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->a:I

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/rank/view/a;

    const/4 v0, 0x0

    iget v1, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->a:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->e(Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/program/rank/view/a;->showLoading(ZII)V

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/rank/view/a;

    iget v0, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->a:I

    invoke-interface {p1, p2, v0}, Lcom/xiaopeng/musicradio/program/rank/view/a;->showLoadingFailed(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean;)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a(Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;I)I

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->b(Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;I)I

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/rank/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a(Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;)I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingHotRankListBean;->isFromCache()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/musicradio/program/rank/view/a;->addRankList(Ljava/util/List;IZ)V

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/rank/view/a;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->b(Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->c(Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/program/rank/view/a;->showLoading(ZII)V

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->d(Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;)I

    move-result p1

    if-nez p1, :cond_1

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/rank/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/rank/view/a;->showNoData()V

    :cond_1
    return-void
.end method
