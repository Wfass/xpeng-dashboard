.class public Lcom/xiaopeng/musicradio/widget/ListenScrollView;
.super Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;
.source "ListenScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/ListenScrollView$a;
    }
.end annotation


# instance fields
.field private mInitialPoint:Landroid/graphics/PointF;

.field private mIsMeasure:Z

.field mScrollViewListener:Lcom/xiaopeng/musicradio/widget/ListenScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->mIsMeasure:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->mIsMeasure:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->mIsMeasure:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto :goto_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->mInitialPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->mInitialPoint:Landroid/graphics/PointF;

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->mInitialPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->getCurrentScrollY()I

    move-result v0

    if-lez v0, :cond_3

    if-eqz v1, :cond_6

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 85
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 70
    :cond_5
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->mInitialPoint:Landroid/graphics/PointF;

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 88
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public enableMeasure(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->mIsMeasure:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 63
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->mIsMeasure:Z

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->setMeasuredDimension(II)V

    return-void

    .line 58
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->onMeasure(II)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;->onScrollChanged(IIII)V

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->mScrollViewListener:Lcom/xiaopeng/musicradio/widget/ListenScrollView$a;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/widget/ListenScrollView$a;->a(IIII)V

    :cond_0
    return-void
.end method

.method public setScrollViewListener(Lcom/xiaopeng/musicradio/widget/ListenScrollView$a;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/ListenScrollView;->mScrollViewListener:Lcom/xiaopeng/musicradio/widget/ListenScrollView$a;

    return-void
.end method
