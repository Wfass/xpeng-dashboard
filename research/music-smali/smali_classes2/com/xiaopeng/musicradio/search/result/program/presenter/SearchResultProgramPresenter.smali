.class public Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;
.super Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;
.source "SearchResultProgramPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter<",
        "Lcom/xiaopeng/musicradio/search/result/program/view/a;",
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


# virtual methods
.method protected a(Ljava/lang/String;I)V
    .locals 5

    .line 38
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter$1;-><init>(Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;)V

    .line 40
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 38
    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;->b:I

    .line 42
    new-instance v1, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;-><init>()V

    .line 43
    iput p2, p0, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;->c:I

    .line 44
    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->setReadingAlbumList(Ljava/util/List;)V

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;->a()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/search/result/program/view/a;

    iget v2, p0, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;->b:I

    iget v3, p0, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;->c:I

    const/4 v4, 0x0

    invoke-interface {p2, v4, v2, v3}, Lcom/xiaopeng/musicradio/search/result/program/view/a;->showLoading(ZII)V

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/search/result/program/view/a;

    iget v2, p0, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;->b:I

    iget v3, p0, Lcom/xiaopeng/musicradio/search/result/program/presenter/SearchResultProgramPresenter;->c:I

    invoke-interface {p2, v1, v2, v3}, Lcom/xiaopeng/musicradio/search/result/program/view/a;->updateData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V

    .line 48
    new-instance p2, Lcom/xiaopeng/musicradio/event/common/b$d;

    invoke-direct {p2, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object p2

    invoke-virtual {p2}, Lbnz;->h()Z

    move-result p2

    if-nez p2, :cond_0

    .line 50
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p2

    const-class v1, Lblp;

    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lblp;

    .line 51
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-interface {p2, p1}, Lblp;->playReading(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    .line 52
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbnz;->a(Z)V

    :cond_0
    return-void
.end method

.method protected d()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->onCreate(Landroidx/lifecycle/n;)V

    return-void
.end method
