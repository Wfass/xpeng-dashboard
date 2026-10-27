.class Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter$1;
.super Lbkv;
.source "NrCategoryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/category/category/view/b;

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/netradio/category/category/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;)V
    .locals 5

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 51
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;

    .line 53
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->getType()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 54
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->getBizVal()I

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/category/category/view/b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/netradio/category/category/view/b;->getData(Ljava/util/List;)V

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;

    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->a(Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;Z)Z

    goto :goto_1

    .line 65
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/category/category/view/b;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagListBean;)V

    return-void
.end method
