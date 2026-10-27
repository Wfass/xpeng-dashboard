.class public Lcom/xiaopeng/musicradio/widget/j$c;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "c"
.end annotation


# instance fields
.field protected a:Lcom/xiaopeng/musicradio/widget/j;

.field protected b:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/widget/j;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 380
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 381
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/j$c;->a:Lcom/xiaopeng/musicradio/widget/j;

    .line 382
    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/j$c;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j$c;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 410
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/j$c;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 411
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/j$c;->a:Lcom/xiaopeng/musicradio/widget/j;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/j;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    if-gt v0, v1, :cond_1

    .line 413
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/j$c;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    .line 414
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v4, v3

    if-lt v4, v2, :cond_0

    .line 415
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/j$c;->a:Lcom/xiaopeng/musicradio/widget/j;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/musicradio/widget/j;->a(IZ)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected b()V
    .locals 4

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j$c;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 423
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/j$c;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 424
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/j$c;->a:Lcom/xiaopeng/musicradio/widget/j;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/j;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    if-lt v1, v0, :cond_1

    .line 426
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/j$c;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    .line 427
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j$c;->a:Lcom/xiaopeng/musicradio/widget/j;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/j;->a(IZ)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_1

    .line 396
    :cond_0
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/j$c;->c:I

    if-lez p1, :cond_1

    .line 397
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j$c;->a()V

    goto :goto_0

    .line 399
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j$c;->b()V

    :goto_0
    const/4 p1, 0x0

    .line 401
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/j$c;->c:I

    :goto_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 389
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/j$c;->c:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/j$c;->c:I

    return-void
.end method
