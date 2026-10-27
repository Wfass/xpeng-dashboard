.class Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;
.super Lcom/xiaopeng/musicradio/widget/scrollindicator/a;
.source "ScrollIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 436
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/view/View;II)I
    .locals 3

    .line 484
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 485
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, -0x2

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 486
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 487
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 488
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr p1, p2

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 444
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->a:Z

    if-eq v0, p1, :cond_1

    .line 445
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 447
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->setSplitMethod(I)V

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->requestLayout()V

    .line 450
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->invalidate()V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    .line 440
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->a:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 456
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->a:Z

    if-eqz v0, :cond_4

    .line 457
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;

    .line 458
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_4

    .line 461
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_1

    .line 464
    invoke-virtual {p0, v4}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7, p1, p2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->a(Landroid/view/View;II)I

    move-result v7

    if-ge v6, v7, :cond_0

    move v6, v7

    :cond_0
    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-le v5, v1, :cond_2

    .line 469
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->setFillViewport(Z)V

    const/4 v0, 0x2

    .line 470
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->setSplitMethod(I)V

    goto :goto_1

    :cond_2
    mul-int/2addr v6, v2

    const/4 v2, 0x1

    if-le v6, v1, :cond_3

    .line 472
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->setFillViewport(Z)V

    .line 473
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->setSplitMethod(I)V

    goto :goto_1

    .line 475
    :cond_3
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->setFillViewport(Z)V

    .line 476
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->setSplitMethod(I)V

    .line 480
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->onMeasure(II)V

    return-void
.end method
