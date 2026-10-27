.class Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;
.super Lbkv;
.source "GuessLikeListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;I)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    iput p2, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->a:I

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;

    const/4 v0, 0x0

    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->a:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->d(Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;->showLoading(ZII)V

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;

    iget v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->a:I

    invoke-interface {p1, p2, v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;->showLoadingFailed(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 64
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->getPageBean()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a(Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;I)I

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->getPageBean()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->b(Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;I)I

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a(Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;)I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/GuessLikeListBean;->isFromCache()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;->addGuessLikeList(Ljava/util/List;IZ)V

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;

    const/4 v0, 0x0

    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->a:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->b(Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;->showLoading(ZII)V

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->c(Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;)I

    move-result p1

    if-nez p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter$1;->b:Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/b;->showNoData()V

    :cond_1
    return-void
.end method
