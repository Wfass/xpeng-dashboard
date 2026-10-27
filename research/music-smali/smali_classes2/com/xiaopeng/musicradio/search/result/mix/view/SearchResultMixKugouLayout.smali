.class public Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;
.super Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;
.source "SearchResultMixKugouLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;->f()Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixKugouPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected f()Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixKugouPresenter;
    .locals 1

    .line 34
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixKugouPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixKugouPresenter;-><init>()V

    return-object v0
.end method

.method protected synthetic g()Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixQQPresenter;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;->f()Lcom/xiaopeng/musicradio/search/result/mix/presenter/SearchResultMixKugouPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected getAccountType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 44
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->fragment_search_result_kugou_mix:I

    return v0
.end method

.method public t_()V
    .locals 2

    .line 49
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;->getAccountType()I

    move-result v1

    invoke-virtual {v0, v1}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;->g:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 55
    :cond_0
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->stub_auth_kugou:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :cond_1
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->search_auth_kugou:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;->g:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
