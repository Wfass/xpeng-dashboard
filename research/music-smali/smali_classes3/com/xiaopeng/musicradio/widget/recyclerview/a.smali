.class public Lcom/xiaopeng/musicradio/widget/recyclerview/a;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "AverageGridDecoration.java"


# instance fields
.field protected a:I

.field protected b:Z

.field protected c:I

.field protected d:I

.field private e:I


# direct methods
.method public constructor <init>(IZII)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->d:I

    .line 25
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->a:I

    .line 26
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->b:Z

    .line 27
    iput p3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->e:I

    .line 28
    iput p4, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->d:I

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
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->c:I

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 37
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 38
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p4

    const/4 v1, 0x1

    sub-int/2addr p4, v1

    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 40
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    .line 41
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v2

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 44
    iget v4, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->a:I

    .line 45
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    instance-of v5, v5, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v5, :cond_0

    .line 46
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v4

    .line 48
    :cond_0
    div-int v5, v4, v2

    .line 50
    div-int/2addr v3, v2

    .line 51
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    .line 52
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/2addr p2, v5

    sub-int/2addr v2, p2

    const/4 p2, 0x0

    if-le v5, v1, :cond_1

    add-int/lit8 p2, v5, -0x1

    .line 56
    div-int p2, v2, p2

    .line 58
    :cond_1
    iget v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->d:I

    if-lez v2, :cond_2

    move p2, v2

    .line 62
    :cond_2
    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->b:Z

    if-eqz v2, :cond_3

    mul-int v2, v3, p2

    .line 63
    div-int/2addr v2, v5

    sub-int v2, p2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    mul-int/2addr v3, p2

    .line 64
    div-int/2addr v3, v5

    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_3
    mul-int v2, v3, p2

    .line 66
    div-int/2addr v2, v5

    iput v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    mul-int/2addr v3, p2

    .line 67
    div-int/2addr v3, v5

    sub-int/2addr p2, v3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 69
    :goto_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->a(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result p2

    .line 70
    div-int/2addr p2, v4

    if-nez p2, :cond_4

    .line 72
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget p3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->c:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_4
    if-ne v0, p4, :cond_5

    .line 76
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;->e:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_5
    return-void
.end method
