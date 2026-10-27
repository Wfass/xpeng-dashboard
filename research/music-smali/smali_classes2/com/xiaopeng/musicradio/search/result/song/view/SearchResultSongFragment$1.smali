.class Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SearchResultSongFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->setView()V
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

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$1;->a:Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$1;->a:Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->access$000(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;)Lbnv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbnv;->b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$1;->a:Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->access$100(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
