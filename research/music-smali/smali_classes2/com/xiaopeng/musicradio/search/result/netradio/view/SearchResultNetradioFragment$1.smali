.class Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SearchResultNetradioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$1;->a:Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$1;->a:Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->access$000(Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;)Lbnq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbnq;->b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$1;->a:Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->access$100(Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
