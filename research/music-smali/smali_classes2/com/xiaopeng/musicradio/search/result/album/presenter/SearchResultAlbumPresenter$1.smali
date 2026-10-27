.class Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter$1;
.super Ljava/lang/Object;
.source "SearchResultAlbumPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter;Ljava/lang/String;I)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter$1;->a:Ljava/lang/String;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter$1$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter$1$1;-><init>(Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter$1;)V

    .line 42
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 43
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter;->a(Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter;I)I

    .line 44
    new-instance v1, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;-><init>()V

    .line 45
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->setAlbumList(Ljava/util/List;)V

    .line 46
    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter;

    iget v3, p0, Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter$1;->b:I

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter;->b(Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter;I)I

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v2

    invoke-virtual {v2}, Lbnz;->h()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    new-instance v2, Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter$1$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter$1$2;-><init>(Lcom/xiaopeng/musicradio/search/result/album/presenter/SearchResultAlbumPresenter$1;Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;)V

    invoke-static {v2}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
