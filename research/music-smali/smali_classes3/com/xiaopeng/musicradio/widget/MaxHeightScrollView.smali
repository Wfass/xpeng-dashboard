.class public Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;
.super Landroid/widget/ScrollView;
.source "MaxHeightScrollView.java"


# instance fields
.field private mMaxHeight:I

.field private mScrollEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 20
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;->mScrollEnable:Z

    .line 33
    sget-object p3, Lcom/xiaopeng/musicradio/common/k$i;->MaxHeightScrollView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 34
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->MaxHeightScrollView_max_height:I

    const/4 p3, -0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;->mMaxHeight:I

    .line 36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public canScroll()Z
    .locals 2

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 41
    iget p2, p0, Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;->mMaxHeight:I

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;->mScrollEnable:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;->mMaxHeight:I

    return-void
.end method

.method public setScrollEnable(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/MaxHeightScrollView;->mScrollEnable:Z

    return-void
.end method
