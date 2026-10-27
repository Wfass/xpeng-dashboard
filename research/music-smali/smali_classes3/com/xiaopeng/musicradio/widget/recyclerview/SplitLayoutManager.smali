.class public Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SplitLayoutManager.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroidx/recyclerview/widget/OrientationHelper;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method private a(Landroid/view/View;)V
    .locals 8

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 161
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 163
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    .line 167
    iget v3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a:I

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getWidthMode()I

    move-result v5

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->canScrollHorizontally()Z

    move-result v7

    .line 168
    invoke-static {v3, v5, v2, v6, v7}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    .line 170
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a()I

    move-result v3

    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->canScrollVertically()Z

    move-result v6

    .line 170
    invoke-static {v3, v4, v1, v5, v6}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a()I

    move-result v3

    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    .line 174
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->canScrollHorizontally()Z

    move-result v6

    .line 173
    invoke-static {v3, v4, v2, v5, v6}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getHeightMode()I

    move-result v4

    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->canScrollVertically()Z

    move-result v6

    .line 175
    invoke-static {v3, v4, v1, v5, v6}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 178
    :goto_0
    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 3

    .line 258
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 263
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 264
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 265
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 266
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    if-lez p2, :cond_1

    .line 268
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->e:I

    goto :goto_1

    .line 270
    :cond_1
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->f:I

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method private a(I)Z
    .locals 2

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a()I

    move-result v0

    mul-int/2addr p1, v0

    .line 153
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->d:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->d:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->c:Landroidx/recyclerview/widget/OrientationHelper;

    .line 154
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static a(III)Z
    .locals 3

    .line 191
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 192
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8

    .line 92
    iget p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->e:I

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-ltz p2, :cond_2

    .line 94
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v3

    .line 96
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->addView(Landroid/view/View;)V

    .line 97
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->e:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->e:I

    .line 98
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a:I

    if-ne v1, v0, :cond_0

    .line 99
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a(Landroid/view/View;)V

    .line 100
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    .line 101
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v2

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getPaddingLeft()I

    move-result v4

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a()I

    move-result v5

    mul-int/2addr v5, p2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a()I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->d:I

    sub-int/2addr v5, v6

    add-int v6, v4, v1

    add-int v7, v5, v2

    move-object v2, p0

    .line 104
    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto :goto_1

    .line 106
    :cond_0
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a(Landroid/view/View;)V

    .line 107
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    .line 108
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v2

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a()I

    move-result v4

    mul-int/2addr v4, p2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->d:I

    sub-int/2addr v4, v5

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getPaddingTop()I

    move-result v5

    add-int v6, v4, v1

    add-int v7, v5, v2

    move-object v2, p0

    .line 111
    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .line 124
    iget p2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->f:I

    .line 125
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 126
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 128
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->addView(Landroid/view/View;)V

    .line 129
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->f:I

    .line 130
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a:I

    if-ne v0, v1, :cond_0

    .line 131
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a(Landroid/view/View;)V

    .line 132
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v0

    .line 133
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getPaddingLeft()I

    move-result v3

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a()I

    move-result v4

    mul-int/2addr v4, p2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->d:I

    sub-int/2addr v4, v5

    add-int v5, v3, v0

    add-int v6, v4, v1

    move-object v1, p0

    .line 136
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto :goto_1

    .line 138
    :cond_0
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a(Landroid/view/View;)V

    .line 139
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v0

    .line 140
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a()I

    move-result v3

    mul-int/2addr v3, p2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->d:I

    sub-int/2addr v3, v4

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getPaddingTop()I

    move-result v4

    add-int v5, v3, v0

    add-int v6, v4, v1

    move-object v1, p0

    .line 143
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->c:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->b:I

    div-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 283
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 278
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 3

    .line 288
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0

    .line 291
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public isAutoMeasureEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 65
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->e:I

    .line 67
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->f:I

    .line 68
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->d:I

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 233
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->c:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->b:I

    div-int/2addr v0, v1

    .line 238
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getItemCount()I

    move-result v1

    mul-int/2addr v0, v1

    .line 239
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->d:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->c:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    sub-int v2, v0, v2

    if-le v1, v2, :cond_1

    .line 240
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->c:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->d:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 241
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->d:I

    add-int v1, p1, v0

    if-gez v1, :cond_2

    neg-int v0, v0

    goto :goto_0

    :cond_2
    move v0, p1

    .line 244
    :goto_0
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->d:I

    .line 245
    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    neg-int p1, v0

    .line 246
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->offsetChildrenHorizontal(I)V

    .line 247
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return v0
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 213
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->c:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->b:I

    div-int/2addr v0, v1

    .line 218
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->getItemCount()I

    move-result v1

    mul-int/2addr v0, v1

    .line 219
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->d:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->c:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    sub-int v2, v0, v2

    if-le v1, v2, :cond_1

    .line 220
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->c:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->d:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 221
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->d:I

    add-int v1, p1, v0

    if-gez v1, :cond_2

    neg-int v0, v0

    goto :goto_0

    :cond_2
    move v0, p1

    .line 224
    :goto_0
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->d:I

    .line 225
    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    neg-int p1, v0

    .line 226
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->offsetChildrenVertical(I)V

    .line 227
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return v0
.end method

.method shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->isMeasurementCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {p1, p3, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/SplitLayoutManager;->a(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
