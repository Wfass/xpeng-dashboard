.class public Lain;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridDividerItemDecoration.java"


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:Landroid/graphics/drawable/Drawable;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 51
    iput-object p1, p0, Lain;->a:Landroid/graphics/drawable/Drawable;

    .line 52
    iput-object p2, p0, Lain;->b:Landroid/graphics/drawable/Drawable;

    .line 53
    iput p3, p0, Lain;->c:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 9

    .line 95
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 94
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 96
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 97
    iget v1, p0, Lain;->c:I

    div-int v2, v0, v1

    .line 98
    rem-int v3, v0, v1

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    if-ge v1, v3, :cond_0

    .line 104
    iget v4, p0, Lain;->c:I

    mul-int/2addr v4, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v2, -0x1

    .line 106
    iget v5, p0, Lain;->c:I

    mul-int/2addr v4, v5

    :goto_1
    add-int/2addr v4, v1

    .line 110
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 111
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 114
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 116
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 117
    iget-object v7, p0, Lain;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int v7, v5, v7

    .line 118
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 122
    iget-object v8, p0, Lain;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7, v6, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    iget-object v4, p0, Lain;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 9

    .line 139
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 138
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 140
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    int-to-double v0, v0

    .line 141
    iget v2, p0, Lain;->c:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    int-to-double v4, v3

    cmpg-double v6, v4, v0

    if-gtz v6, :cond_2

    if-ne v3, v2, :cond_0

    goto :goto_2

    :cond_0
    cmpl-double v4, v4, v0

    if-nez v4, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 149
    iget v5, p0, Lain;->c:I

    mul-int/2addr v4, v5

    goto :goto_1

    .line 151
    :cond_1
    iget v4, p0, Lain;->c:I

    mul-int/2addr v4, v3

    :goto_1
    sub-int/2addr v4, v2

    .line 154
    iget v5, p0, Lain;->c:I

    add-int/lit8 v6, v3, -0x1

    mul-int/2addr v5, v6

    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 155
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 159
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 161
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    .line 162
    iget-object v7, p0, Lain;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v7, v5, v7

    .line 163
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    .line 167
    iget-object v8, p0, Lain;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v6, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 168
    iget-object v4, p0, Lain;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 128
    iput p1, p0, Lain;->c:I

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 82
    iget-object p2, p0, Lain;->a:Landroid/graphics/drawable/Drawable;

    .line 83
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object p3, p0, Lain;->a:Landroid/graphics/drawable/Drawable;

    .line 84
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    const/4 p4, 0x0

    .line 82
    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lain;->b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 67
    invoke-direct {p0, p1, p2}, Lain;->a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
