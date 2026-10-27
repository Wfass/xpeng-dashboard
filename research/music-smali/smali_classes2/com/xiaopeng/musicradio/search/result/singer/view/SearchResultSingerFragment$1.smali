.class Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SearchResultSingerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment$1;->a:Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment$1;->a:Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->access$000(Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;)Lbnt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbnt;->b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment$1;->a:Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->access$100(Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
