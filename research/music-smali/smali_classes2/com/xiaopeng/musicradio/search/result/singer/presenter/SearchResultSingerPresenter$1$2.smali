.class Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1$2;
.super Ljava/lang/Object;
.source "SearchResultSingerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

.field final synthetic c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1$2;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1$2;->b:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/singer/view/a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->a(Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->b(Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/search/result/singer/view/a;->showLoading(ZII)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/singer/view/a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1$2;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->c(Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->d(Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/search/result/singer/view/a;->updateData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V

    .line 58
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1$2;->b:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1$2;->b:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter$1$2;->b:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/xiaopeng/musicradio/search/result/singer/presenter/SearchResultSingerPresenter;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbnz;->a(Z)V

    :cond_0
    return-void
.end method
