.class public Lcom/xiaopeng/musicradio/widget/recyclerview/h;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridSpacingItemDecoration.java"


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:Z

.field protected e:I

.field protected f:I

.field protected g:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 25
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a:I

    .line 26
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b:I

    .line 27
    iput-boolean p4, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->d:Z

    .line 28
    iput p3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->f:I

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 19
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a:I

    .line 20
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b:I

    .line 21
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->d:Z

    return-void
.end method


# virtual methods
.method protected a(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .locals 4

    .line 82
    instance-of v0, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_2

    .line 83
    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 84
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_1

    if-ne v1, p1, :cond_0

    .line 88
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_0
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    add-int/2addr v0, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :cond_2
    return p1
.end method

.method public a(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->c:I

    return-void
.end method

.method protected b(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .locals 3

    .line 101
    instance-of v0, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 102
    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 103
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_0

    .line 107
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :cond_1
    return p1
.end method

.method public b(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->e:I

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->g:I

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 45
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a:I

    .line 46
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 49
    :cond_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 50
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    .line 51
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {p0, p4, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result p4

    div-int/2addr p4, v0

    .line 53
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result v1

    .line 54
    rem-int v2, v1, v0

    .line 55
    div-int/2addr v1, v0

    .line 56
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result p2

    rem-int/2addr p2, v0

    .line 58
    iget-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->d:Z

    if-eqz p3, :cond_1

    .line 59
    iget p3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b:I

    mul-int/2addr v2, p3

    div-int/2addr v2, v0

    sub-int v2, p3, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr p2, p3

    .line 60
    div-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 63
    :cond_1
    iget p3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b:I

    mul-int/2addr v2, p3

    div-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr p2, p3

    .line 64
    div-int/2addr p2, v0

    sub-int/2addr p3, p2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    if-nez v1, :cond_2

    .line 68
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget p3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->e:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 70
    iget p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->c:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 73
    :cond_3
    :goto_1
    iget p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->f:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v1, p4, :cond_4

    .line 76
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->g:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_4
    return-void
.end method
