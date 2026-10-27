.class public Latj;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MineGridItemDecoration.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    iput p1, p0, Latj;->a:I

    .line 19
    iput p3, p0, Latj;->c:I

    .line 20
    iput p2, p0, Latj;->b:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 25
    iget p4, p0, Latj;->a:I

    .line 26
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p4

    .line 29
    :cond_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 30
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p3

    int-to-double v0, p3

    .line 31
    iget p3, p0, Latj;->b:I

    mul-int/2addr p3, p4

    int-to-double v2, p3

    sub-double/2addr v0, v2

    add-int/lit8 p3, p4, -0x1

    mul-int/2addr p3, p4

    int-to-double v2, p3

    div-double/2addr v0, v2

    .line 32
    rem-int p3, p2, p4

    int-to-double v2, p3

    mul-double/2addr v0, v2

    double-to-int p3, v0

    .line 33
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 34
    div-int/2addr p2, p4

    if-eqz p2, :cond_1

    .line 35
    iget p2, p0, Latj;->c:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 37
    iput p2, p1, Landroid/graphics/Rect;->top:I

    :goto_0
    return-void
.end method
