.class public Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;
.super Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;
.source "SearchResultCollectionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter<",
        "Lcom/xiaopeng/musicradio/search/result/collection/view/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;->b:I

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;->b:I

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;->c:I

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;->c:I

    return p1
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;->b:I

    return p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;->c:I

    return p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;I)V
    .locals 1

    .line 36
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter$1;-><init>(Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;Ljava/lang/String;I)V

    invoke-static {v0}, Lbql;->f(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected d()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->onCreate(Landroidx/lifecycle/n;)V

    return-void
.end method
