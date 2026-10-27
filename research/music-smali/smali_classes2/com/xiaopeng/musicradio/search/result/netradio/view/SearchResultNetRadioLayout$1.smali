.class Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SearchResultNetRadioLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout$1;->a:Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout$1;->a:Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;->a(Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;)Lbnq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbnq;->b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout$1;->a:Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;->b(Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
