.class Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MsSingerHotLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 139
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 144
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 145
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->access$100(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 146
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    .line 147
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 148
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-nez p1, :cond_0

    .line 149
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-static {p3}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->access$200(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)I

    move-result p3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->access$300(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-static {p3}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->access$300(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 150
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-static {p3}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->access$400(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->showSmallLayout()V

    :cond_0
    if-nez p1, :cond_1

    .line 152
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-static {p3}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->access$300(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)I

    move-result p3

    if-ne p2, p3, :cond_1

    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-static {p3}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->access$200(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)I

    move-result p3

    if-le p2, p3, :cond_1

    .line 153
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-static {p3}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->access$400(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->showBigLayout()V

    :cond_1
    if-nez p1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->access$202(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;I)I

    :cond_2
    return-void
.end method
