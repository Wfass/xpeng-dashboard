.class public Lamf;
.super Ljava/lang/Object;
.source "ScrollingUtil.java"


# direct methods
.method private static a(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)I
    .locals 2

    .line 168
    :try_start_0
    const-class v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const-string v1, "mDecorInsets"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    .line 172
    iget p0, p0, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1

    .line 88
    instance-of v0, p0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/AbsListView;

    invoke-static {p0}, Lamf;->a(Landroid/widget/AbsListView;)Z

    move-result p0

    return p0

    .line 89
    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Lamf;->a(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p0

    return p0

    :cond_1
    if-eqz p0, :cond_2

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    mul-int/lit8 p1, p1, 0x2

    if-gt p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Landroid/view/ViewGroup;)Z
    .locals 3

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    add-int/2addr v2, p0

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static a(Landroid/webkit/WebView;I)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result p0

    add-int/2addr v1, p0

    int-to-float p0, v1

    sub-float/2addr v0, p0

    mul-int/lit8 p1, p1, 0x2

    int-to-float p0, p1

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Landroid/widget/AbsListView;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 104
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 108
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p0

    if-nez p0, :cond_1

    if-nez v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 117
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 121
    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 126
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 128
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 129
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 130
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    const/4 v4, -0x1

    if-ge v1, v3, :cond_3

    .line 131
    invoke-static {p0, v4}, Lgj;->b(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollY()I

    move-result p0

    if-gtz p0, :cond_2

    move v0, v2

    :cond_2
    return v0

    .line 133
    :cond_3
    invoke-static {p0, v4}, Lgj;->b(Landroid/view/View;I)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 140
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 142
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v5, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v5

    invoke-static {v4}, Lamf;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result p0

    sub-int p0, v3, p0

    goto :goto_0

    :cond_5
    move p0, v0

    .line 144
    :goto_0
    instance-of v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v3, :cond_6

    .line 145
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 146
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    if-ge v1, v2, :cond_7

    if-nez p0, :cond_7

    return v2

    .line 149
    :cond_6
    instance-of v3, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v3, :cond_7

    .line 150
    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v3, 0x0

    .line 151
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    move-result-object v1

    .line 152
    aget v1, v1, v0

    if-ge v1, v2, :cond_7

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public static b(Landroid/view/View;I)Z
    .locals 1

    .line 94
    instance-of v0, p0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/AbsListView;

    invoke-static {p0}, Lamf;->b(Landroid/widget/AbsListView;)Z

    move-result p0

    return p0

    .line 95
    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0}, Lamf;->b(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p0

    return p0

    .line 96
    :cond_1
    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/webkit/WebView;

    invoke-static {p0, p1}, Lamf;->a(Landroid/webkit/WebView;I)Z

    move-result p0

    return p0

    .line 97
    :cond_2
    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lamf;->a(Landroid/view/ViewGroup;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/widget/AbsListView;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 201
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 202
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getMeasuredHeight()I

    move-result p0

    if-gt v1, p0, :cond_0

    move v0, v3

    :cond_0
    return v0
.end method

.method public static b(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 211
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 212
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 216
    :cond_0
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 218
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 219
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v4

    if-lt v2, v4, :cond_3

    .line 220
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    .line 221
    invoke-static {p0, v3}, Lgj;->b(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollY()I

    move-result p0

    if-ltz p0, :cond_1

    move v0, v3

    :cond_1
    return v0

    .line 223
    :cond_2
    invoke-static {p0, v3}, Lgj;->b(Landroid/view/View;I)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    .line 227
    :cond_3
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 228
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne p0, v1, :cond_6

    return v3

    .line 231
    :cond_4
    instance-of p0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p0, :cond_6

    .line 232
    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 p0, 0x0

    .line 234
    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object p0

    .line 235
    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v3

    .line 236
    array-length v2, p0

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_6

    aget v5, p0, v4

    if-ne v5, v1, :cond_5

    return v3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v0
.end method

.method public static c(Landroid/view/View;I)V
    .locals 7

    .line 247
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 248
    :cond_0
    instance-of v0, p0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/widget/ScrollView;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 249
    :cond_1
    instance-of v0, p0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/widget/AbsListView;

    invoke-virtual {p0, p1, v1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 252
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "smoothScrollBy"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/Integer;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 253
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    :goto_0
    return-void
.end method
