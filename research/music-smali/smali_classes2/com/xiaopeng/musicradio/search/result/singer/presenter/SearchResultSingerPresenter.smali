.class public Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;
.super Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;
.source "SearchResultSingerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter<",
        "Lcom/xiaopeng/musicradio/search/result/singer/view/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->b:I

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->b:I

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->c:I

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->c:I

    return p1
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->b:I

    return p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->c:I

    return p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;I)V
    .locals 1

    .line 37
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;-><init>(Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;Ljava/lang/String;I)V

    invoke-static {v0}, Lbql;->f(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected d()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->onCreate(Landroidx/lifecycle/n;)V

    return-void
.end method
