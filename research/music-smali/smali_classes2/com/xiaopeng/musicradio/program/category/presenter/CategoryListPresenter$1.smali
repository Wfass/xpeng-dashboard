.class Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;
.super Ljava/lang/Object;
.source "CategoryListPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;I)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    iput p2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;)V
    .locals 4

    .line 73
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 74
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean$PageBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean$PageBean;->getTotalPage()I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->c(Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;I)I

    .line 84
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean$PageBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean$PageBean;->getPage()I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->d(Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;I)I

    .line 85
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 86
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/program/category/view/a;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;)I

    move-result v3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;->isFromCache()Z

    move-result p1

    invoke-interface {v2, v0, v3, p1}, Lcom/xiaopeng/musicradio/program/category/view/a;->showAlbums(Ljava/util/List;IZ)V

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/a;

    iget v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;->a:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->b(Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;)I

    move-result v2

    invoke-interface {p1, v1, v0, v2}, Lcom/xiaopeng/musicradio/program/category/view/a;->showLoading(ZII)V

    goto :goto_1

    .line 75
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean$PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean$DataBean$PageBean;->getTotalPage()I

    move-result p1

    if-nez p1, :cond_2

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/category/view/a;->showNoData()V

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;I)I

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->b(Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;I)I

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;)V

    return-void
.end method
