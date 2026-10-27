.class Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1$1;
.super Lbkv;
.source "SearchResultMixPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1$1;->a:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1$1;->a:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;->a:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1$1;->a:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;->a:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-interface {v0, p2, v1}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->showLoadingFailed(Ljava/lang/String;I)V

    :cond_0
    const p2, 0x4c9965

    if-ne p1, p2, :cond_1

    .line 82
    new-instance p1, Lasi$a;

    invoke-direct {p1}, Lasi$a;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lbdm;->a(Lbdm$b;)V

    goto :goto_0

    .line 85
    :cond_1
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    invoke-direct {p1, v1}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1$1;->a:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;->a:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1$1;->a:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;->a:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v2}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->showLoading(ZII)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1$1;->a:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1;->a:Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/mix/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object p1

    invoke-interface {v0, p1, v1, v1}, Lcom/xiaopeng/musicradio/search/result/mix/view/a;->updateData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V

    .line 72
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    invoke-direct {p1, v1}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 64
    check-cast p1, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixPresenter$1$1;->a(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;)V

    return-void
.end method
