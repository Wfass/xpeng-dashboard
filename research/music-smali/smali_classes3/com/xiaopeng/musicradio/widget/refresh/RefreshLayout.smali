.class public Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;
.super Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
.source "RefreshLayout.java"

# interfaces
.implements Lfx;


# instance fields
.field private final a:Lga;

.field private final b:Lfw;

.field private final c:[I

.field private final d:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x2

    .line 27
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->c:[I

    .line 28
    new-array p3, p3, [I

    iput-object p3, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->d:[I

    .line 41
    sget-object p3, Lcom/xiaopeng/musicradio/common/k$i;->RefreshLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 43
    :try_start_0
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->RefreshLayout_headerTopMargin:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 45
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->setHeaderTopMargin(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    new-instance p1, Lga;

    invoke-direct {p1, p0}, Lga;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->a:Lga;

    const-string p1, "mChildHelper"

    .line 51
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfw;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->b:Lfw;

    return-void

    :catchall_0
    move-exception p2

    .line 47
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    throw p2
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->isRefreshing:Z

    return v0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->b:Lfw;

    invoke-virtual {v0, p1, p2, p3}, Lfw;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->b:Lfw;

    invoke-virtual {v0, p1, p2}, Lfw;->a(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->b:Lfw;

    invoke-virtual {v0, p1, p2, p3, p4}, Lfw;->a(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->b:Lfw;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lfw;->a(IIII[I)Z

    move-result p1

    return p1
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->a:Lga;

    invoke-virtual {v0}, Lga;->a()I

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->b:Lfw;

    invoke-virtual {v0}, Lfw;->b()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->b:Lfw;

    invoke-virtual {v0}, Lfw;->a()Z

    move-result v0

    return v0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 168
    invoke-virtual {p0, p2, p3, p4}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 162
    invoke-virtual {p0, p2, p3}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 3

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->c:[I

    const/4 v0, 0x0

    .line 82
    aget v1, p4, v0

    sub-int/2addr p2, v1

    const/4 v1, 0x1

    aget v2, p4, v1

    sub-int/2addr p3, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p2, p3, p1, v2}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 83
    aget p2, p4, v0

    aget p3, p1, v0

    add-int/2addr p2, p3

    aput p2, p4, v0

    .line 84
    aget p2, p4, v1

    aget p1, p1, v1

    add-int/2addr p2, p1

    aput p2, p4, v1

    :cond_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    .line 103
    iget-object v5, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->d:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->dispatchNestedScroll(IIII[I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->a:Lga;

    invoke-virtual {v0, p1, p2, p3}, Lga;->a(Landroid/view/View;Landroid/view/View;I)V

    and-int/lit8 p1, p3, 0x2

    .line 76
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->startNestedScroll(I)Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->a:Lga;

    invoke-virtual {v0, p1}, Lga;->a(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->stopNestedScroll()V

    return-void
.end method

.method public setHeaderTopMargin(I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 56
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->b:Lfw;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Lfw;->a(Z)V

    :cond_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->b:Lfw;

    invoke-virtual {v0, p1}, Lfw;->b(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->b:Lfw;

    invoke-virtual {v0}, Lfw;->c()V

    return-void
.end method
