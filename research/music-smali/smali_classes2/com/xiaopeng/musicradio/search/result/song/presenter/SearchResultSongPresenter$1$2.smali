.class Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1$2;
.super Ljava/lang/Object;
.source "SearchResultSongPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1$2;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/song/view/a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;->a(Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;->b(Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/search/result/song/view/a;->showLoading(ZII)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/song/view/a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1$2;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;->c(Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;->c:Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;->d(Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/search/result/song/view/a;->updateData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V

    .line 63
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1$2;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v2, Lbfe;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    if-eqz v0, :cond_0

    .line 67
    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1$2;->c:Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter$1;->a:Ljava/lang/String;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->a()Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lbfe;->playMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbnz;->a(Z)V

    :cond_1
    return-void
.end method
