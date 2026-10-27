.class Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$2;
.super Ljava/lang/Object;
.source "SearchResultSongFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->access$000(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;)Lbnv;

    move-result-object p1

    invoke-virtual {p1}, Lbnv;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->access$200(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->access$000(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;)Lbnv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbnv;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->access$000(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;)Lbnv;

    move-result-object v2

    invoke-virtual {v2}, Lbnv;->i()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;

    iget v3, v3, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->mAccountType:I

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/xiaopeng/musicradio/search/result/song/presenter/SearchResultSongPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Ljava/util/List;II)V

    :cond_0
    return-void
.end method
