.class Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter$1;
.super Ljava/lang/Object;
.source "SearchResultCollectionPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;Ljava/lang/String;I)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter$1;->a:Ljava/lang/String;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter$1$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter$1$1;-><init>(Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter$1;)V

    .line 41
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 42
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;->a(Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;I)I

    .line 43
    new-instance v1, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;-><init>()V

    .line 44
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->setCollectList(Ljava/util/List;)V

    .line 45
    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;

    iget v3, p0, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter$1;->b:I

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;->b(Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter;I)I

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v2

    invoke-virtual {v2}, Lbnz;->h()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    new-instance v2, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter$1$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter$1$2;-><init>(Lcom/xiaopeng/musicradio/search/result/collection/presenter/SearchResultCollectionPresenter$1;Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;)V

    invoke-static {v2}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
